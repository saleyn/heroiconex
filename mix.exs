defmodule HeroiconsCodegen.MixProject do
  use Mix.Project

  def project do
    [
      app:             :heroiconex,
      version:         "0.1.0",
      elixir:          "~> 1.14",
      start_permanent: Mix.env() == :prod,
      compilers:       Mix.compilers ++ [:generate],
      deps:            deps(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_live_view, "~> 0.18.3"},
      {:floki,             "~> 0.34",                                  runtime: false, only: [:dev, :test]},
      {:simplehttp,   git: "https://github.com/saleyn/simplehttp.git", runtime: false, only: [:dev, :test]},
      {:jason,             "~> 1.4",                                   funtime: false, only: [:dev, :test]},
    ]
  end
end

defmodule Mix.Tasks.Compile.Generate do
  use Mix.Task.Compiler

  @url "https://api.github.com/repos/tailwindlabs/heroicons/releases/latest"
  @archive '/tmp/heroicons.tgz'

  @impl true
  def run(_args) do
    target_files = for s <- ["solid", "outline", "mini"], dst = "lib/#{s}.ex", not File.exists?(dst), do: s

    if target_files == [] do
      :noop
    else
      IO.puts("Downloading heroicons")
      {:ok, release} = SimpleHttp.get(@url, [ssl: [verify: :verify_none], headers: %{"User-Agent" => "Mozilla"}])
      zipurl = Jason.decode!(release.body)["tarball_url"]
      IO.puts("URL: #{zipurl}")
      {:ok, :saved_to_file} = SimpleHttp.get(zipurl, [ssl: [verify: :verify_none], headers: %{"User-Agent" => "Mozilla"}, stream: @archive])
      {:ok, data} = :erl_tar.extract(@archive, [:compressed, :memory])

      file_icons =
        Enum.reduce(data, [], fn {file, svgbin}, acc ->
          case Regex.run(~r|[^/]+/optimized/(\d\d)/([^/]+)/(.*)\.svg|, List.to_string(file), [capture: :all_but_first]) do
            nil ->
              acc
            [size, type, filename] ->
              s = (size == "20" and type == "solid") && "mini" || type
              content = Floki.parse_document!(svgbin) |> Floki.find("path") |> Floki.raw_html
              name    = Path.basename(filename, ".svg")
              [{s, name, content} | acc]
          end
        end)
        |> Enum.reverse
        |> Enum.group_by(fn {s, _, _} -> s end, fn {_, name, content} -> {name, content} end)

      for {type, icons} <- file_icons do
        text =
          for {name, content} <- icons do
            """
              @doc "Returns an `#{name}` icon"
              def #{String.replace(name, "-", "_")}(assigns), do:
                Map.put(assigns, :inner_block, ["#{String.replace(content, "\"", "\\\"")}"])
                |> Svg.icon()
            """
          end

        text = Enum.join(text, "\n")
        data =
          """
          defmodule Heroicons.#{String.capitalize(type)} do
            alias Heroicons.Helpers.Svg

          #{text}
          end
          """
        dst = "lib/#{type}.ex"
        :ok = File.write!(dst, data)
        [{_, _}] = Code.compile_file(dst)
        IO.puts("Generated #{dst}")
      end
      @archive |> to_string() |> File.rm()
      :ok
    end
  end
end
