defmodule Heroiconex.MixProject do
  use Mix.Project

  def project do
    [
      app:             :heroiconex,
      version:         "2.0.13",
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
      {:floki,             "~> 0.34", runtime: false, only: :dev},
      {:simplehttp,        "~> 0.5",  runtime: false, only: :dev},
      {:jason,             "~> 1.0",  funtime: false, only: [:dev, :test]},
    ]
  end
end

defmodule Mix.Tasks.Compile.Generate do
  use Mix.Task.Compiler

  @url "https://api.github.com/repos/tailwindlabs/heroicons/releases/latest"
  @archive "/tmp/heroicons.tgz"

  @impl true
  def run(args) do
    target_files = for s <- ["solid", "outline", "mini"], dst = "lib/#{s}.ex", not File.exists?(dst), do: s

    if target_files == [] do
      :noop
    else
      IO.puts("Downloading heroicons")
      {:ok, release} = SimpleHttp.get(@url, [ssl: [verify: :verify_none], headers: %{"User-Agent" => "Mozilla"}])
      zipurl = Jason.decode!(release.body)["tarball_url"]
      vsn    = Regex.replace(~r|.*/v([\d\.]+)$|, zipurl, "\\1")
      IO.puts("URL: #{zipurl}")
      {:ok, :saved_to_file} = SimpleHttp.get(zipurl, [ssl: [verify: :verify_none], headers: %{"User-Agent" => "Mozilla"}, stream: @archive])
      {:ok, data} = :erl_tar.extract(@archive |> to_charlist, [:compressed, :memory])

      build_files(data)
      replace_vsn(vsn)

      :lists.member("--preserve", args) || File.rm(@archive)
    end
  end

  defp build_files(data) do
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
    |> Enum.each(fn {type, icons} ->
      dst = "lib/#{type}.ex"
      Mix.Generator.copy_template("templates/heroicons.exs", dst, %{type: type, icons: icons}, force: true)

      [{_, _}] = Code.compile_file(dst)
    end)
  end

  defp replace_vsn(vsn) do
    src_file       = File.read!("mix.exs")
    [{pos,   len}] = Regex.run(~r|\n\s+version: +"([^"]+)",\s*\n.*|, src_file, [capture: :all_but_first, return: :index])
    {start,  bend} = String.split_at(src_file, pos)
    {old_vsn,bend} = String.split_at(bend,     len)

    if old_vsn != vsn do
      IO.puts("Changing version: #{old_vsn} -> #{vsn}")
      :ok  = File.write("mix.exs", [start, vsn, bend])
    end
    :ok
  end
end
