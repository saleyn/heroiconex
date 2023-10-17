defmodule Heroicons.Icon do
  @moduledoc """
  This module renders Heroicons of outline, solid, and mini types.

  Every macro in this module accepts the following assigns:

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
    <Heroicons.Icon.academic_cap solid class="w-5 h-5"/>
    <Heroicons.Icon.academic_cap solid title="Some title" class="w-5 h-5"/>

    <Heroicons.Icon.academic_cap class="w-5 h-5"/>
    <Heroicons.Icon.academic_cap outline title="Some title" class="w-5 h-5"/>

    <Heroicons.Icon.academic-cap mini class="w-5 h-5"/>
    <Heroicons.Icon.academic-cap mini title="Some title" class="w-5 h-5"/>
    \"""
    ```
  """
  use Phoenix.Component

  @doc false
  defmacro remove_attrs(assigns) do
    quote do
      unquote(assigns)
      |> Map.delete(:solid)
      |> Map.delete(:outline)
      |> Map.delete(:mini)
    end
  end
<%= for name <- @icons, fun = String.replace(name, "-", "_") do %>
  @doc "Renders the `<%= name %>` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro <%= fun %>(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.<%= fun %>(assigns2)
        mini    -> Heroicons.Mini.<%= fun %>(assigns2)
        outline -> Heroicons.Outline.<%= fun %>(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.<%= fun %>"
      end
    end
  end
<% end %>
end
