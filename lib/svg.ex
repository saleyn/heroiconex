defmodule Heroicons do
  @moduledoc "Defines a convenience macro `icon/1`."

  @doc """
  Use this macro in Phoenix HEEX templates to generate
  Heroicons.

  The name of the icon can be defined using the `name` attribute or (deprecated)
  `type` attribute.

  The style of the icon is defined by the `solid`, `outline`, or `mini` boolean
  attribute or a (deprecated) `style` attribute.

  ## Attributes

  - `name`    - icon name. Valid names are found at [this url](https://heroicons.com).
  - `solid`   - use solid fill 24x24 icon.
  - `outline` - use outline fill 24x24 icon (this is the default).
  - `mini`    - use mini size (20x20) for elements like buttons, form elements.
  - `title`   - when defined, include the title value in the SVG.
  - `class`   - add class attribute to the SVG.
  - `rest`    - other attributes to add to the SVG.

  ## Example

    ```
    ~H"""
    <Heroicons.icon name="academic-cap" solid class="h-4 w-4" title="Cap"/>
    <Heroicons.icon type="academic_cap" style="solid" class="h-4 w-4" title="Cap"/>
    \"""
    ```
  """
  defmacro icon(assigns) do
    quote do
      {name, assigns} =
        case Map.fetch(unquote(assigns), :name) do
          {:ok, name} -> {name, Map.delete(unquote(assigns), :name)}
          :error      -> Map.pop!(unquote(assigns), :type)
        end
      {style, assigns} = Map.pop(assigns, :style)
      icon = Heroicons.to_atom(name)
      {mod, assigns}   =
        case style do
          nil ->
            cond do
              assigns[:solid]   -> {Heroicons.Solid,   Map.delete(assigns, :solid)}
              assigns[:outline] -> {Heroicons.Outline, Map.delete(assigns, :outline)}
              assigns[:mini]    -> {Heroicons.Mini,    Map.delete(assigns, :mini)}
              true              ->
                raise ArgumentError, message: "Missing style|solid|outline|mini attribute"
            end
          "solid"   -> {Heroicons.Solid,   assigns}
          "outline" -> {Heroicons.Outline, assigns}
          "mini"    -> {Heroicons.Mini,    assigns}
        end

      Code.loaded?(mod) || ({:module, ^mod} = :code.load_file(mod))

      :erlang.function_exported(mod, icon, 1) ||
        raise ArgumentError, message:
          "Invalid Heroicon type '#{name}': no function #{inspect(mod)}.#{icon}/1"

      apply(mod, icon, [assigns])
    end
  end

  @doc false
  def to_atom(s) when is_binary(s), do: s |> String.replace("-", "_") |> String.to_existing_atom()
  def to_atom(s) when is_atom(s),   do: s
end

defmodule Heroicons.Helpers.Svg do
  @moduledoc false
  # SVG helper component
  use Phoenix.Component

  attr :title, :string, default: nil
  attr :class, :string, default: nil
  attr :rest,  :global, doc: "HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :paths, :string, required: true

  @doc false
  def icon(assigns) do
    assigns =
      case assigns[:class] do
        nil -> assigns
        val -> put_in(assigns, [:rest, :class], val)
      end
    ~H"""
    <svg {@rest} xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
      <%= if not is_nil(@title) do %>
        <title><%= @title %></title>
      <% end %>
      <%= Phoenix.HTML.raw @paths %>
    </svg>
    """
  end
end
