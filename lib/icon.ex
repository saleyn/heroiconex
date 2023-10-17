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

  @doc "Renders the `academic-cap` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro academic_cap(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.academic_cap(assigns2)
        mini    -> Heroicons.Mini.academic_cap(assigns2)
        outline -> Heroicons.Outline.academic_cap(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.academic_cap"
      end
    end
  end

  @doc "Renders the `adjustments-horizontal` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro adjustments_horizontal(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.adjustments_horizontal(assigns2)
        mini    -> Heroicons.Mini.adjustments_horizontal(assigns2)
        outline -> Heroicons.Outline.adjustments_horizontal(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.adjustments_horizontal"
      end
    end
  end

  @doc "Renders the `adjustments-vertical` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro adjustments_vertical(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.adjustments_vertical(assigns2)
        mini    -> Heroicons.Mini.adjustments_vertical(assigns2)
        outline -> Heroicons.Outline.adjustments_vertical(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.adjustments_vertical"
      end
    end
  end

  @doc "Renders the `archive-box` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro archive_box(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.archive_box(assigns2)
        mini    -> Heroicons.Mini.archive_box(assigns2)
        outline -> Heroicons.Outline.archive_box(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.archive_box"
      end
    end
  end

  @doc "Renders the `archive-box-arrow-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro archive_box_arrow_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.archive_box_arrow_down(assigns2)
        mini    -> Heroicons.Mini.archive_box_arrow_down(assigns2)
        outline -> Heroicons.Outline.archive_box_arrow_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.archive_box_arrow_down"
      end
    end
  end

  @doc "Renders the `archive-box-x-mark` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro archive_box_x_mark(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.archive_box_x_mark(assigns2)
        mini    -> Heroicons.Mini.archive_box_x_mark(assigns2)
        outline -> Heroicons.Outline.archive_box_x_mark(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.archive_box_x_mark"
      end
    end
  end

  @doc "Renders the `arrow-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_down(assigns2)
        mini    -> Heroicons.Mini.arrow_down(assigns2)
        outline -> Heroicons.Outline.arrow_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_down"
      end
    end
  end

  @doc "Renders the `arrow-down-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_down_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_down_circle(assigns2)
        mini    -> Heroicons.Mini.arrow_down_circle(assigns2)
        outline -> Heroicons.Outline.arrow_down_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_down_circle"
      end
    end
  end

  @doc "Renders the `arrow-down-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_down_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_down_left(assigns2)
        mini    -> Heroicons.Mini.arrow_down_left(assigns2)
        outline -> Heroicons.Outline.arrow_down_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_down_left"
      end
    end
  end

  @doc "Renders the `arrow-down-on-square` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_down_on_square(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_down_on_square(assigns2)
        mini    -> Heroicons.Mini.arrow_down_on_square(assigns2)
        outline -> Heroicons.Outline.arrow_down_on_square(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_down_on_square"
      end
    end
  end

  @doc "Renders the `arrow-down-on-square-stack` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_down_on_square_stack(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_down_on_square_stack(assigns2)
        mini    -> Heroicons.Mini.arrow_down_on_square_stack(assigns2)
        outline -> Heroicons.Outline.arrow_down_on_square_stack(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_down_on_square_stack"
      end
    end
  end

  @doc "Renders the `arrow-down-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_down_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_down_right(assigns2)
        mini    -> Heroicons.Mini.arrow_down_right(assigns2)
        outline -> Heroicons.Outline.arrow_down_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_down_right"
      end
    end
  end

  @doc "Renders the `arrow-down-tray` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_down_tray(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_down_tray(assigns2)
        mini    -> Heroicons.Mini.arrow_down_tray(assigns2)
        outline -> Heroicons.Outline.arrow_down_tray(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_down_tray"
      end
    end
  end

  @doc "Renders the `arrow-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_left(assigns2)
        mini    -> Heroicons.Mini.arrow_left(assigns2)
        outline -> Heroicons.Outline.arrow_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_left"
      end
    end
  end

  @doc "Renders the `arrow-left-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_left_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_left_circle(assigns2)
        mini    -> Heroicons.Mini.arrow_left_circle(assigns2)
        outline -> Heroicons.Outline.arrow_left_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_left_circle"
      end
    end
  end

  @doc "Renders the `arrow-left-on-rectangle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_left_on_rectangle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_left_on_rectangle(assigns2)
        mini    -> Heroicons.Mini.arrow_left_on_rectangle(assigns2)
        outline -> Heroicons.Outline.arrow_left_on_rectangle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_left_on_rectangle"
      end
    end
  end

  @doc "Renders the `arrow-long-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_long_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_long_down(assigns2)
        mini    -> Heroicons.Mini.arrow_long_down(assigns2)
        outline -> Heroicons.Outline.arrow_long_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_long_down"
      end
    end
  end

  @doc "Renders the `arrow-long-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_long_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_long_left(assigns2)
        mini    -> Heroicons.Mini.arrow_long_left(assigns2)
        outline -> Heroicons.Outline.arrow_long_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_long_left"
      end
    end
  end

  @doc "Renders the `arrow-long-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_long_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_long_right(assigns2)
        mini    -> Heroicons.Mini.arrow_long_right(assigns2)
        outline -> Heroicons.Outline.arrow_long_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_long_right"
      end
    end
  end

  @doc "Renders the `arrow-long-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_long_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_long_up(assigns2)
        mini    -> Heroicons.Mini.arrow_long_up(assigns2)
        outline -> Heroicons.Outline.arrow_long_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_long_up"
      end
    end
  end

  @doc "Renders the `arrow-path` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_path(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_path(assigns2)
        mini    -> Heroicons.Mini.arrow_path(assigns2)
        outline -> Heroicons.Outline.arrow_path(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_path"
      end
    end
  end

  @doc "Renders the `arrow-path-rounded-square` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_path_rounded_square(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_path_rounded_square(assigns2)
        mini    -> Heroicons.Mini.arrow_path_rounded_square(assigns2)
        outline -> Heroicons.Outline.arrow_path_rounded_square(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_path_rounded_square"
      end
    end
  end

  @doc "Renders the `arrow-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_right(assigns2)
        mini    -> Heroicons.Mini.arrow_right(assigns2)
        outline -> Heroicons.Outline.arrow_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_right"
      end
    end
  end

  @doc "Renders the `arrow-right-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_right_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_right_circle(assigns2)
        mini    -> Heroicons.Mini.arrow_right_circle(assigns2)
        outline -> Heroicons.Outline.arrow_right_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_right_circle"
      end
    end
  end

  @doc "Renders the `arrow-right-on-rectangle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_right_on_rectangle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_right_on_rectangle(assigns2)
        mini    -> Heroicons.Mini.arrow_right_on_rectangle(assigns2)
        outline -> Heroicons.Outline.arrow_right_on_rectangle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_right_on_rectangle"
      end
    end
  end

  @doc "Renders the `arrow-small-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_small_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_small_down(assigns2)
        mini    -> Heroicons.Mini.arrow_small_down(assigns2)
        outline -> Heroicons.Outline.arrow_small_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_small_down"
      end
    end
  end

  @doc "Renders the `arrow-small-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_small_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_small_left(assigns2)
        mini    -> Heroicons.Mini.arrow_small_left(assigns2)
        outline -> Heroicons.Outline.arrow_small_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_small_left"
      end
    end
  end

  @doc "Renders the `arrow-small-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_small_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_small_right(assigns2)
        mini    -> Heroicons.Mini.arrow_small_right(assigns2)
        outline -> Heroicons.Outline.arrow_small_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_small_right"
      end
    end
  end

  @doc "Renders the `arrow-small-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_small_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_small_up(assigns2)
        mini    -> Heroicons.Mini.arrow_small_up(assigns2)
        outline -> Heroicons.Outline.arrow_small_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_small_up"
      end
    end
  end

  @doc "Renders the `arrow-top-right-on-square` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_top_right_on_square(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_top_right_on_square(assigns2)
        mini    -> Heroicons.Mini.arrow_top_right_on_square(assigns2)
        outline -> Heroicons.Outline.arrow_top_right_on_square(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_top_right_on_square"
      end
    end
  end

  @doc "Renders the `arrow-trending-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_trending_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_trending_down(assigns2)
        mini    -> Heroicons.Mini.arrow_trending_down(assigns2)
        outline -> Heroicons.Outline.arrow_trending_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_trending_down"
      end
    end
  end

  @doc "Renders the `arrow-trending-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_trending_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_trending_up(assigns2)
        mini    -> Heroicons.Mini.arrow_trending_up(assigns2)
        outline -> Heroicons.Outline.arrow_trending_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_trending_up"
      end
    end
  end

  @doc "Renders the `arrow-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_up(assigns2)
        mini    -> Heroicons.Mini.arrow_up(assigns2)
        outline -> Heroicons.Outline.arrow_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_up"
      end
    end
  end

  @doc "Renders the `arrow-up-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_up_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_up_circle(assigns2)
        mini    -> Heroicons.Mini.arrow_up_circle(assigns2)
        outline -> Heroicons.Outline.arrow_up_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_up_circle"
      end
    end
  end

  @doc "Renders the `arrow-up-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_up_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_up_left(assigns2)
        mini    -> Heroicons.Mini.arrow_up_left(assigns2)
        outline -> Heroicons.Outline.arrow_up_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_up_left"
      end
    end
  end

  @doc "Renders the `arrow-up-on-square` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_up_on_square(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_up_on_square(assigns2)
        mini    -> Heroicons.Mini.arrow_up_on_square(assigns2)
        outline -> Heroicons.Outline.arrow_up_on_square(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_up_on_square"
      end
    end
  end

  @doc "Renders the `arrow-up-on-square-stack` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_up_on_square_stack(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_up_on_square_stack(assigns2)
        mini    -> Heroicons.Mini.arrow_up_on_square_stack(assigns2)
        outline -> Heroicons.Outline.arrow_up_on_square_stack(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_up_on_square_stack"
      end
    end
  end

  @doc "Renders the `arrow-up-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_up_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_up_right(assigns2)
        mini    -> Heroicons.Mini.arrow_up_right(assigns2)
        outline -> Heroicons.Outline.arrow_up_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_up_right"
      end
    end
  end

  @doc "Renders the `arrow-up-tray` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_up_tray(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_up_tray(assigns2)
        mini    -> Heroicons.Mini.arrow_up_tray(assigns2)
        outline -> Heroicons.Outline.arrow_up_tray(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_up_tray"
      end
    end
  end

  @doc "Renders the `arrow-uturn-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_uturn_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_uturn_down(assigns2)
        mini    -> Heroicons.Mini.arrow_uturn_down(assigns2)
        outline -> Heroicons.Outline.arrow_uturn_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_uturn_down"
      end
    end
  end

  @doc "Renders the `arrow-uturn-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_uturn_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_uturn_left(assigns2)
        mini    -> Heroicons.Mini.arrow_uturn_left(assigns2)
        outline -> Heroicons.Outline.arrow_uturn_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_uturn_left"
      end
    end
  end

  @doc "Renders the `arrow-uturn-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_uturn_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_uturn_right(assigns2)
        mini    -> Heroicons.Mini.arrow_uturn_right(assigns2)
        outline -> Heroicons.Outline.arrow_uturn_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_uturn_right"
      end
    end
  end

  @doc "Renders the `arrow-uturn-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrow_uturn_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrow_uturn_up(assigns2)
        mini    -> Heroicons.Mini.arrow_uturn_up(assigns2)
        outline -> Heroicons.Outline.arrow_uturn_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrow_uturn_up"
      end
    end
  end

  @doc "Renders the `arrows-pointing-in` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrows_pointing_in(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrows_pointing_in(assigns2)
        mini    -> Heroicons.Mini.arrows_pointing_in(assigns2)
        outline -> Heroicons.Outline.arrows_pointing_in(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrows_pointing_in"
      end
    end
  end

  @doc "Renders the `arrows-pointing-out` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrows_pointing_out(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrows_pointing_out(assigns2)
        mini    -> Heroicons.Mini.arrows_pointing_out(assigns2)
        outline -> Heroicons.Outline.arrows_pointing_out(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrows_pointing_out"
      end
    end
  end

  @doc "Renders the `arrows-right-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrows_right_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrows_right_left(assigns2)
        mini    -> Heroicons.Mini.arrows_right_left(assigns2)
        outline -> Heroicons.Outline.arrows_right_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrows_right_left"
      end
    end
  end

  @doc "Renders the `arrows-up-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro arrows_up_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.arrows_up_down(assigns2)
        mini    -> Heroicons.Mini.arrows_up_down(assigns2)
        outline -> Heroicons.Outline.arrows_up_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.arrows_up_down"
      end
    end
  end

  @doc "Renders the `at-symbol` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro at_symbol(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.at_symbol(assigns2)
        mini    -> Heroicons.Mini.at_symbol(assigns2)
        outline -> Heroicons.Outline.at_symbol(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.at_symbol"
      end
    end
  end

  @doc "Renders the `backspace` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro backspace(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.backspace(assigns2)
        mini    -> Heroicons.Mini.backspace(assigns2)
        outline -> Heroicons.Outline.backspace(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.backspace"
      end
    end
  end

  @doc "Renders the `backward` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro backward(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.backward(assigns2)
        mini    -> Heroicons.Mini.backward(assigns2)
        outline -> Heroicons.Outline.backward(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.backward"
      end
    end
  end

  @doc "Renders the `banknotes` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro banknotes(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.banknotes(assigns2)
        mini    -> Heroicons.Mini.banknotes(assigns2)
        outline -> Heroicons.Outline.banknotes(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.banknotes"
      end
    end
  end

  @doc "Renders the `bars-2` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bars_2(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bars_2(assigns2)
        mini    -> Heroicons.Mini.bars_2(assigns2)
        outline -> Heroicons.Outline.bars_2(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bars_2"
      end
    end
  end

  @doc "Renders the `bars-3` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bars_3(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bars_3(assigns2)
        mini    -> Heroicons.Mini.bars_3(assigns2)
        outline -> Heroicons.Outline.bars_3(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bars_3"
      end
    end
  end

  @doc "Renders the `bars-3-bottom-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bars_3_bottom_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bars_3_bottom_left(assigns2)
        mini    -> Heroicons.Mini.bars_3_bottom_left(assigns2)
        outline -> Heroicons.Outline.bars_3_bottom_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bars_3_bottom_left"
      end
    end
  end

  @doc "Renders the `bars-3-bottom-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bars_3_bottom_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bars_3_bottom_right(assigns2)
        mini    -> Heroicons.Mini.bars_3_bottom_right(assigns2)
        outline -> Heroicons.Outline.bars_3_bottom_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bars_3_bottom_right"
      end
    end
  end

  @doc "Renders the `bars-3-center-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bars_3_center_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bars_3_center_left(assigns2)
        mini    -> Heroicons.Mini.bars_3_center_left(assigns2)
        outline -> Heroicons.Outline.bars_3_center_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bars_3_center_left"
      end
    end
  end

  @doc "Renders the `bars-4` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bars_4(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bars_4(assigns2)
        mini    -> Heroicons.Mini.bars_4(assigns2)
        outline -> Heroicons.Outline.bars_4(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bars_4"
      end
    end
  end

  @doc "Renders the `bars-arrow-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bars_arrow_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bars_arrow_down(assigns2)
        mini    -> Heroicons.Mini.bars_arrow_down(assigns2)
        outline -> Heroicons.Outline.bars_arrow_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bars_arrow_down"
      end
    end
  end

  @doc "Renders the `bars-arrow-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bars_arrow_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bars_arrow_up(assigns2)
        mini    -> Heroicons.Mini.bars_arrow_up(assigns2)
        outline -> Heroicons.Outline.bars_arrow_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bars_arrow_up"
      end
    end
  end

  @doc "Renders the `battery-0` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro battery_0(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.battery_0(assigns2)
        mini    -> Heroicons.Mini.battery_0(assigns2)
        outline -> Heroicons.Outline.battery_0(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.battery_0"
      end
    end
  end

  @doc "Renders the `battery-100` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro battery_100(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.battery_100(assigns2)
        mini    -> Heroicons.Mini.battery_100(assigns2)
        outline -> Heroicons.Outline.battery_100(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.battery_100"
      end
    end
  end

  @doc "Renders the `battery-50` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro battery_50(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.battery_50(assigns2)
        mini    -> Heroicons.Mini.battery_50(assigns2)
        outline -> Heroicons.Outline.battery_50(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.battery_50"
      end
    end
  end

  @doc "Renders the `beaker` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro beaker(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.beaker(assigns2)
        mini    -> Heroicons.Mini.beaker(assigns2)
        outline -> Heroicons.Outline.beaker(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.beaker"
      end
    end
  end

  @doc "Renders the `bell` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bell(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bell(assigns2)
        mini    -> Heroicons.Mini.bell(assigns2)
        outline -> Heroicons.Outline.bell(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bell"
      end
    end
  end

  @doc "Renders the `bell-alert` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bell_alert(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bell_alert(assigns2)
        mini    -> Heroicons.Mini.bell_alert(assigns2)
        outline -> Heroicons.Outline.bell_alert(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bell_alert"
      end
    end
  end

  @doc "Renders the `bell-slash` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bell_slash(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bell_slash(assigns2)
        mini    -> Heroicons.Mini.bell_slash(assigns2)
        outline -> Heroicons.Outline.bell_slash(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bell_slash"
      end
    end
  end

  @doc "Renders the `bell-snooze` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bell_snooze(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bell_snooze(assigns2)
        mini    -> Heroicons.Mini.bell_snooze(assigns2)
        outline -> Heroicons.Outline.bell_snooze(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bell_snooze"
      end
    end
  end

  @doc "Renders the `bolt` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bolt(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bolt(assigns2)
        mini    -> Heroicons.Mini.bolt(assigns2)
        outline -> Heroicons.Outline.bolt(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bolt"
      end
    end
  end

  @doc "Renders the `bolt-slash` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bolt_slash(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bolt_slash(assigns2)
        mini    -> Heroicons.Mini.bolt_slash(assigns2)
        outline -> Heroicons.Outline.bolt_slash(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bolt_slash"
      end
    end
  end

  @doc "Renders the `book-open` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro book_open(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.book_open(assigns2)
        mini    -> Heroicons.Mini.book_open(assigns2)
        outline -> Heroicons.Outline.book_open(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.book_open"
      end
    end
  end

  @doc "Renders the `bookmark` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bookmark(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bookmark(assigns2)
        mini    -> Heroicons.Mini.bookmark(assigns2)
        outline -> Heroicons.Outline.bookmark(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bookmark"
      end
    end
  end

  @doc "Renders the `bookmark-slash` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bookmark_slash(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bookmark_slash(assigns2)
        mini    -> Heroicons.Mini.bookmark_slash(assigns2)
        outline -> Heroicons.Outline.bookmark_slash(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bookmark_slash"
      end
    end
  end

  @doc "Renders the `bookmark-square` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bookmark_square(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bookmark_square(assigns2)
        mini    -> Heroicons.Mini.bookmark_square(assigns2)
        outline -> Heroicons.Outline.bookmark_square(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bookmark_square"
      end
    end
  end

  @doc "Renders the `briefcase` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro briefcase(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.briefcase(assigns2)
        mini    -> Heroicons.Mini.briefcase(assigns2)
        outline -> Heroicons.Outline.briefcase(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.briefcase"
      end
    end
  end

  @doc "Renders the `bug-ant` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro bug_ant(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.bug_ant(assigns2)
        mini    -> Heroicons.Mini.bug_ant(assigns2)
        outline -> Heroicons.Outline.bug_ant(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.bug_ant"
      end
    end
  end

  @doc "Renders the `building-library` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro building_library(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.building_library(assigns2)
        mini    -> Heroicons.Mini.building_library(assigns2)
        outline -> Heroicons.Outline.building_library(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.building_library"
      end
    end
  end

  @doc "Renders the `building-office` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro building_office(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.building_office(assigns2)
        mini    -> Heroicons.Mini.building_office(assigns2)
        outline -> Heroicons.Outline.building_office(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.building_office"
      end
    end
  end

  @doc "Renders the `building-office-2` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro building_office_2(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.building_office_2(assigns2)
        mini    -> Heroicons.Mini.building_office_2(assigns2)
        outline -> Heroicons.Outline.building_office_2(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.building_office_2"
      end
    end
  end

  @doc "Renders the `building-storefront` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro building_storefront(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.building_storefront(assigns2)
        mini    -> Heroicons.Mini.building_storefront(assigns2)
        outline -> Heroicons.Outline.building_storefront(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.building_storefront"
      end
    end
  end

  @doc "Renders the `cake` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cake(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cake(assigns2)
        mini    -> Heroicons.Mini.cake(assigns2)
        outline -> Heroicons.Outline.cake(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cake"
      end
    end
  end

  @doc "Renders the `calculator` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro calculator(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.calculator(assigns2)
        mini    -> Heroicons.Mini.calculator(assigns2)
        outline -> Heroicons.Outline.calculator(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.calculator"
      end
    end
  end

  @doc "Renders the `calendar` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro calendar(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.calendar(assigns2)
        mini    -> Heroicons.Mini.calendar(assigns2)
        outline -> Heroicons.Outline.calendar(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.calendar"
      end
    end
  end

  @doc "Renders the `calendar-days` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro calendar_days(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.calendar_days(assigns2)
        mini    -> Heroicons.Mini.calendar_days(assigns2)
        outline -> Heroicons.Outline.calendar_days(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.calendar_days"
      end
    end
  end

  @doc "Renders the `camera` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro camera(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.camera(assigns2)
        mini    -> Heroicons.Mini.camera(assigns2)
        outline -> Heroicons.Outline.camera(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.camera"
      end
    end
  end

  @doc "Renders the `chart-bar` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chart_bar(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chart_bar(assigns2)
        mini    -> Heroicons.Mini.chart_bar(assigns2)
        outline -> Heroicons.Outline.chart_bar(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chart_bar"
      end
    end
  end

  @doc "Renders the `chart-bar-square` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chart_bar_square(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chart_bar_square(assigns2)
        mini    -> Heroicons.Mini.chart_bar_square(assigns2)
        outline -> Heroicons.Outline.chart_bar_square(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chart_bar_square"
      end
    end
  end

  @doc "Renders the `chart-pie` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chart_pie(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chart_pie(assigns2)
        mini    -> Heroicons.Mini.chart_pie(assigns2)
        outline -> Heroicons.Outline.chart_pie(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chart_pie"
      end
    end
  end

  @doc "Renders the `chat-bubble-bottom-center` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chat_bubble_bottom_center(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chat_bubble_bottom_center(assigns2)
        mini    -> Heroicons.Mini.chat_bubble_bottom_center(assigns2)
        outline -> Heroicons.Outline.chat_bubble_bottom_center(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chat_bubble_bottom_center"
      end
    end
  end

  @doc "Renders the `chat-bubble-bottom-center-text` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chat_bubble_bottom_center_text(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chat_bubble_bottom_center_text(assigns2)
        mini    -> Heroicons.Mini.chat_bubble_bottom_center_text(assigns2)
        outline -> Heroicons.Outline.chat_bubble_bottom_center_text(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chat_bubble_bottom_center_text"
      end
    end
  end

  @doc "Renders the `chat-bubble-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chat_bubble_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chat_bubble_left(assigns2)
        mini    -> Heroicons.Mini.chat_bubble_left(assigns2)
        outline -> Heroicons.Outline.chat_bubble_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chat_bubble_left"
      end
    end
  end

  @doc "Renders the `chat-bubble-left-ellipsis` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chat_bubble_left_ellipsis(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chat_bubble_left_ellipsis(assigns2)
        mini    -> Heroicons.Mini.chat_bubble_left_ellipsis(assigns2)
        outline -> Heroicons.Outline.chat_bubble_left_ellipsis(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chat_bubble_left_ellipsis"
      end
    end
  end

  @doc "Renders the `chat-bubble-left-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chat_bubble_left_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chat_bubble_left_right(assigns2)
        mini    -> Heroicons.Mini.chat_bubble_left_right(assigns2)
        outline -> Heroicons.Outline.chat_bubble_left_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chat_bubble_left_right"
      end
    end
  end

  @doc "Renders the `chat-bubble-oval-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chat_bubble_oval_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chat_bubble_oval_left(assigns2)
        mini    -> Heroicons.Mini.chat_bubble_oval_left(assigns2)
        outline -> Heroicons.Outline.chat_bubble_oval_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chat_bubble_oval_left"
      end
    end
  end

  @doc "Renders the `chat-bubble-oval-left-ellipsis` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chat_bubble_oval_left_ellipsis(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chat_bubble_oval_left_ellipsis(assigns2)
        mini    -> Heroicons.Mini.chat_bubble_oval_left_ellipsis(assigns2)
        outline -> Heroicons.Outline.chat_bubble_oval_left_ellipsis(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chat_bubble_oval_left_ellipsis"
      end
    end
  end

  @doc "Renders the `check` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro check(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.check(assigns2)
        mini    -> Heroicons.Mini.check(assigns2)
        outline -> Heroicons.Outline.check(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.check"
      end
    end
  end

  @doc "Renders the `check-badge` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro check_badge(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.check_badge(assigns2)
        mini    -> Heroicons.Mini.check_badge(assigns2)
        outline -> Heroicons.Outline.check_badge(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.check_badge"
      end
    end
  end

  @doc "Renders the `check-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro check_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.check_circle(assigns2)
        mini    -> Heroicons.Mini.check_circle(assigns2)
        outline -> Heroicons.Outline.check_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.check_circle"
      end
    end
  end

  @doc "Renders the `chevron-double-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_double_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_double_down(assigns2)
        mini    -> Heroicons.Mini.chevron_double_down(assigns2)
        outline -> Heroicons.Outline.chevron_double_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_double_down"
      end
    end
  end

  @doc "Renders the `chevron-double-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_double_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_double_left(assigns2)
        mini    -> Heroicons.Mini.chevron_double_left(assigns2)
        outline -> Heroicons.Outline.chevron_double_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_double_left"
      end
    end
  end

  @doc "Renders the `chevron-double-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_double_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_double_right(assigns2)
        mini    -> Heroicons.Mini.chevron_double_right(assigns2)
        outline -> Heroicons.Outline.chevron_double_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_double_right"
      end
    end
  end

  @doc "Renders the `chevron-double-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_double_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_double_up(assigns2)
        mini    -> Heroicons.Mini.chevron_double_up(assigns2)
        outline -> Heroicons.Outline.chevron_double_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_double_up"
      end
    end
  end

  @doc "Renders the `chevron-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_down(assigns2)
        mini    -> Heroicons.Mini.chevron_down(assigns2)
        outline -> Heroicons.Outline.chevron_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_down"
      end
    end
  end

  @doc "Renders the `chevron-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_left(assigns2)
        mini    -> Heroicons.Mini.chevron_left(assigns2)
        outline -> Heroicons.Outline.chevron_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_left"
      end
    end
  end

  @doc "Renders the `chevron-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_right(assigns2)
        mini    -> Heroicons.Mini.chevron_right(assigns2)
        outline -> Heroicons.Outline.chevron_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_right"
      end
    end
  end

  @doc "Renders the `chevron-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_up(assigns2)
        mini    -> Heroicons.Mini.chevron_up(assigns2)
        outline -> Heroicons.Outline.chevron_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_up"
      end
    end
  end

  @doc "Renders the `chevron-up-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro chevron_up_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.chevron_up_down(assigns2)
        mini    -> Heroicons.Mini.chevron_up_down(assigns2)
        outline -> Heroicons.Outline.chevron_up_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.chevron_up_down"
      end
    end
  end

  @doc "Renders the `circle-stack` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro circle_stack(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.circle_stack(assigns2)
        mini    -> Heroicons.Mini.circle_stack(assigns2)
        outline -> Heroicons.Outline.circle_stack(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.circle_stack"
      end
    end
  end

  @doc "Renders the `clipboard` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro clipboard(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.clipboard(assigns2)
        mini    -> Heroicons.Mini.clipboard(assigns2)
        outline -> Heroicons.Outline.clipboard(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.clipboard"
      end
    end
  end

  @doc "Renders the `clipboard-document` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro clipboard_document(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.clipboard_document(assigns2)
        mini    -> Heroicons.Mini.clipboard_document(assigns2)
        outline -> Heroicons.Outline.clipboard_document(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.clipboard_document"
      end
    end
  end

  @doc "Renders the `clipboard-document-check` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro clipboard_document_check(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.clipboard_document_check(assigns2)
        mini    -> Heroicons.Mini.clipboard_document_check(assigns2)
        outline -> Heroicons.Outline.clipboard_document_check(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.clipboard_document_check"
      end
    end
  end

  @doc "Renders the `clipboard-document-list` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro clipboard_document_list(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.clipboard_document_list(assigns2)
        mini    -> Heroicons.Mini.clipboard_document_list(assigns2)
        outline -> Heroicons.Outline.clipboard_document_list(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.clipboard_document_list"
      end
    end
  end

  @doc "Renders the `clock` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro clock(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.clock(assigns2)
        mini    -> Heroicons.Mini.clock(assigns2)
        outline -> Heroicons.Outline.clock(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.clock"
      end
    end
  end

  @doc "Renders the `cloud` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cloud(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cloud(assigns2)
        mini    -> Heroicons.Mini.cloud(assigns2)
        outline -> Heroicons.Outline.cloud(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cloud"
      end
    end
  end

  @doc "Renders the `cloud-arrow-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cloud_arrow_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cloud_arrow_down(assigns2)
        mini    -> Heroicons.Mini.cloud_arrow_down(assigns2)
        outline -> Heroicons.Outline.cloud_arrow_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cloud_arrow_down"
      end
    end
  end

  @doc "Renders the `cloud-arrow-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cloud_arrow_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cloud_arrow_up(assigns2)
        mini    -> Heroicons.Mini.cloud_arrow_up(assigns2)
        outline -> Heroicons.Outline.cloud_arrow_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cloud_arrow_up"
      end
    end
  end

  @doc "Renders the `code-bracket` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro code_bracket(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.code_bracket(assigns2)
        mini    -> Heroicons.Mini.code_bracket(assigns2)
        outline -> Heroicons.Outline.code_bracket(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.code_bracket"
      end
    end
  end

  @doc "Renders the `code-bracket-square` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro code_bracket_square(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.code_bracket_square(assigns2)
        mini    -> Heroicons.Mini.code_bracket_square(assigns2)
        outline -> Heroicons.Outline.code_bracket_square(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.code_bracket_square"
      end
    end
  end

  @doc "Renders the `cog` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cog(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cog(assigns2)
        mini    -> Heroicons.Mini.cog(assigns2)
        outline -> Heroicons.Outline.cog(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cog"
      end
    end
  end

  @doc "Renders the `cog-6-tooth` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cog_6_tooth(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cog_6_tooth(assigns2)
        mini    -> Heroicons.Mini.cog_6_tooth(assigns2)
        outline -> Heroicons.Outline.cog_6_tooth(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cog_6_tooth"
      end
    end
  end

  @doc "Renders the `cog-8-tooth` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cog_8_tooth(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cog_8_tooth(assigns2)
        mini    -> Heroicons.Mini.cog_8_tooth(assigns2)
        outline -> Heroicons.Outline.cog_8_tooth(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cog_8_tooth"
      end
    end
  end

  @doc "Renders the `command-line` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro command_line(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.command_line(assigns2)
        mini    -> Heroicons.Mini.command_line(assigns2)
        outline -> Heroicons.Outline.command_line(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.command_line"
      end
    end
  end

  @doc "Renders the `computer-desktop` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro computer_desktop(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.computer_desktop(assigns2)
        mini    -> Heroicons.Mini.computer_desktop(assigns2)
        outline -> Heroicons.Outline.computer_desktop(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.computer_desktop"
      end
    end
  end

  @doc "Renders the `cpu-chip` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cpu_chip(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cpu_chip(assigns2)
        mini    -> Heroicons.Mini.cpu_chip(assigns2)
        outline -> Heroicons.Outline.cpu_chip(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cpu_chip"
      end
    end
  end

  @doc "Renders the `credit-card` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro credit_card(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.credit_card(assigns2)
        mini    -> Heroicons.Mini.credit_card(assigns2)
        outline -> Heroicons.Outline.credit_card(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.credit_card"
      end
    end
  end

  @doc "Renders the `cube` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cube(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cube(assigns2)
        mini    -> Heroicons.Mini.cube(assigns2)
        outline -> Heroicons.Outline.cube(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cube"
      end
    end
  end

  @doc "Renders the `cube-transparent` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cube_transparent(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cube_transparent(assigns2)
        mini    -> Heroicons.Mini.cube_transparent(assigns2)
        outline -> Heroicons.Outline.cube_transparent(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cube_transparent"
      end
    end
  end

  @doc "Renders the `currency-bangladeshi` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro currency_bangladeshi(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.currency_bangladeshi(assigns2)
        mini    -> Heroicons.Mini.currency_bangladeshi(assigns2)
        outline -> Heroicons.Outline.currency_bangladeshi(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.currency_bangladeshi"
      end
    end
  end

  @doc "Renders the `currency-dollar` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro currency_dollar(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.currency_dollar(assigns2)
        mini    -> Heroicons.Mini.currency_dollar(assigns2)
        outline -> Heroicons.Outline.currency_dollar(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.currency_dollar"
      end
    end
  end

  @doc "Renders the `currency-euro` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro currency_euro(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.currency_euro(assigns2)
        mini    -> Heroicons.Mini.currency_euro(assigns2)
        outline -> Heroicons.Outline.currency_euro(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.currency_euro"
      end
    end
  end

  @doc "Renders the `currency-pound` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro currency_pound(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.currency_pound(assigns2)
        mini    -> Heroicons.Mini.currency_pound(assigns2)
        outline -> Heroicons.Outline.currency_pound(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.currency_pound"
      end
    end
  end

  @doc "Renders the `currency-rupee` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro currency_rupee(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.currency_rupee(assigns2)
        mini    -> Heroicons.Mini.currency_rupee(assigns2)
        outline -> Heroicons.Outline.currency_rupee(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.currency_rupee"
      end
    end
  end

  @doc "Renders the `currency-yen` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro currency_yen(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.currency_yen(assigns2)
        mini    -> Heroicons.Mini.currency_yen(assigns2)
        outline -> Heroicons.Outline.currency_yen(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.currency_yen"
      end
    end
  end

  @doc "Renders the `cursor-arrow-rays` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cursor_arrow_rays(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cursor_arrow_rays(assigns2)
        mini    -> Heroicons.Mini.cursor_arrow_rays(assigns2)
        outline -> Heroicons.Outline.cursor_arrow_rays(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cursor_arrow_rays"
      end
    end
  end

  @doc "Renders the `cursor-arrow-ripple` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro cursor_arrow_ripple(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.cursor_arrow_ripple(assigns2)
        mini    -> Heroicons.Mini.cursor_arrow_ripple(assigns2)
        outline -> Heroicons.Outline.cursor_arrow_ripple(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.cursor_arrow_ripple"
      end
    end
  end

  @doc "Renders the `device-phone-mobile` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro device_phone_mobile(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.device_phone_mobile(assigns2)
        mini    -> Heroicons.Mini.device_phone_mobile(assigns2)
        outline -> Heroicons.Outline.device_phone_mobile(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.device_phone_mobile"
      end
    end
  end

  @doc "Renders the `device-tablet` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro device_tablet(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.device_tablet(assigns2)
        mini    -> Heroicons.Mini.device_tablet(assigns2)
        outline -> Heroicons.Outline.device_tablet(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.device_tablet"
      end
    end
  end

  @doc "Renders the `document` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document(assigns2)
        mini    -> Heroicons.Mini.document(assigns2)
        outline -> Heroicons.Outline.document(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document"
      end
    end
  end

  @doc "Renders the `document-arrow-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_arrow_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_arrow_down(assigns2)
        mini    -> Heroicons.Mini.document_arrow_down(assigns2)
        outline -> Heroicons.Outline.document_arrow_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_arrow_down"
      end
    end
  end

  @doc "Renders the `document-arrow-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_arrow_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_arrow_up(assigns2)
        mini    -> Heroicons.Mini.document_arrow_up(assigns2)
        outline -> Heroicons.Outline.document_arrow_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_arrow_up"
      end
    end
  end

  @doc "Renders the `document-chart-bar` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_chart_bar(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_chart_bar(assigns2)
        mini    -> Heroicons.Mini.document_chart_bar(assigns2)
        outline -> Heroicons.Outline.document_chart_bar(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_chart_bar"
      end
    end
  end

  @doc "Renders the `document-check` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_check(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_check(assigns2)
        mini    -> Heroicons.Mini.document_check(assigns2)
        outline -> Heroicons.Outline.document_check(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_check"
      end
    end
  end

  @doc "Renders the `document-duplicate` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_duplicate(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_duplicate(assigns2)
        mini    -> Heroicons.Mini.document_duplicate(assigns2)
        outline -> Heroicons.Outline.document_duplicate(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_duplicate"
      end
    end
  end

  @doc "Renders the `document-magnifying-glass` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_magnifying_glass(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_magnifying_glass(assigns2)
        mini    -> Heroicons.Mini.document_magnifying_glass(assigns2)
        outline -> Heroicons.Outline.document_magnifying_glass(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_magnifying_glass"
      end
    end
  end

  @doc "Renders the `document-minus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_minus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_minus(assigns2)
        mini    -> Heroicons.Mini.document_minus(assigns2)
        outline -> Heroicons.Outline.document_minus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_minus"
      end
    end
  end

  @doc "Renders the `document-plus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_plus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_plus(assigns2)
        mini    -> Heroicons.Mini.document_plus(assigns2)
        outline -> Heroicons.Outline.document_plus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_plus"
      end
    end
  end

  @doc "Renders the `document-text` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro document_text(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.document_text(assigns2)
        mini    -> Heroicons.Mini.document_text(assigns2)
        outline -> Heroicons.Outline.document_text(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.document_text"
      end
    end
  end

  @doc "Renders the `ellipsis-horizontal` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro ellipsis_horizontal(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.ellipsis_horizontal(assigns2)
        mini    -> Heroicons.Mini.ellipsis_horizontal(assigns2)
        outline -> Heroicons.Outline.ellipsis_horizontal(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.ellipsis_horizontal"
      end
    end
  end

  @doc "Renders the `ellipsis-horizontal-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro ellipsis_horizontal_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.ellipsis_horizontal_circle(assigns2)
        mini    -> Heroicons.Mini.ellipsis_horizontal_circle(assigns2)
        outline -> Heroicons.Outline.ellipsis_horizontal_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.ellipsis_horizontal_circle"
      end
    end
  end

  @doc "Renders the `ellipsis-vertical` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro ellipsis_vertical(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.ellipsis_vertical(assigns2)
        mini    -> Heroicons.Mini.ellipsis_vertical(assigns2)
        outline -> Heroicons.Outline.ellipsis_vertical(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.ellipsis_vertical"
      end
    end
  end

  @doc "Renders the `envelope` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro envelope(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.envelope(assigns2)
        mini    -> Heroicons.Mini.envelope(assigns2)
        outline -> Heroicons.Outline.envelope(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.envelope"
      end
    end
  end

  @doc "Renders the `envelope-open` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro envelope_open(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.envelope_open(assigns2)
        mini    -> Heroicons.Mini.envelope_open(assigns2)
        outline -> Heroicons.Outline.envelope_open(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.envelope_open"
      end
    end
  end

  @doc "Renders the `exclamation-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro exclamation_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.exclamation_circle(assigns2)
        mini    -> Heroicons.Mini.exclamation_circle(assigns2)
        outline -> Heroicons.Outline.exclamation_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.exclamation_circle"
      end
    end
  end

  @doc "Renders the `exclamation-triangle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro exclamation_triangle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.exclamation_triangle(assigns2)
        mini    -> Heroicons.Mini.exclamation_triangle(assigns2)
        outline -> Heroicons.Outline.exclamation_triangle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.exclamation_triangle"
      end
    end
  end

  @doc "Renders the `eye` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro eye(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.eye(assigns2)
        mini    -> Heroicons.Mini.eye(assigns2)
        outline -> Heroicons.Outline.eye(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.eye"
      end
    end
  end

  @doc "Renders the `eye-dropper` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro eye_dropper(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.eye_dropper(assigns2)
        mini    -> Heroicons.Mini.eye_dropper(assigns2)
        outline -> Heroicons.Outline.eye_dropper(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.eye_dropper"
      end
    end
  end

  @doc "Renders the `eye-slash` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro eye_slash(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.eye_slash(assigns2)
        mini    -> Heroicons.Mini.eye_slash(assigns2)
        outline -> Heroicons.Outline.eye_slash(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.eye_slash"
      end
    end
  end

  @doc "Renders the `face-frown` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro face_frown(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.face_frown(assigns2)
        mini    -> Heroicons.Mini.face_frown(assigns2)
        outline -> Heroicons.Outline.face_frown(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.face_frown"
      end
    end
  end

  @doc "Renders the `face-smile` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro face_smile(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.face_smile(assigns2)
        mini    -> Heroicons.Mini.face_smile(assigns2)
        outline -> Heroicons.Outline.face_smile(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.face_smile"
      end
    end
  end

  @doc "Renders the `film` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro film(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.film(assigns2)
        mini    -> Heroicons.Mini.film(assigns2)
        outline -> Heroicons.Outline.film(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.film"
      end
    end
  end

  @doc "Renders the `finger-print` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro finger_print(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.finger_print(assigns2)
        mini    -> Heroicons.Mini.finger_print(assigns2)
        outline -> Heroicons.Outline.finger_print(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.finger_print"
      end
    end
  end

  @doc "Renders the `fire` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro fire(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.fire(assigns2)
        mini    -> Heroicons.Mini.fire(assigns2)
        outline -> Heroicons.Outline.fire(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.fire"
      end
    end
  end

  @doc "Renders the `flag` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro flag(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.flag(assigns2)
        mini    -> Heroicons.Mini.flag(assigns2)
        outline -> Heroicons.Outline.flag(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.flag"
      end
    end
  end

  @doc "Renders the `folder` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro folder(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.folder(assigns2)
        mini    -> Heroicons.Mini.folder(assigns2)
        outline -> Heroicons.Outline.folder(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.folder"
      end
    end
  end

  @doc "Renders the `folder-arrow-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro folder_arrow_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.folder_arrow_down(assigns2)
        mini    -> Heroicons.Mini.folder_arrow_down(assigns2)
        outline -> Heroicons.Outline.folder_arrow_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.folder_arrow_down"
      end
    end
  end

  @doc "Renders the `folder-minus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro folder_minus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.folder_minus(assigns2)
        mini    -> Heroicons.Mini.folder_minus(assigns2)
        outline -> Heroicons.Outline.folder_minus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.folder_minus"
      end
    end
  end

  @doc "Renders the `folder-open` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro folder_open(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.folder_open(assigns2)
        mini    -> Heroicons.Mini.folder_open(assigns2)
        outline -> Heroicons.Outline.folder_open(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.folder_open"
      end
    end
  end

  @doc "Renders the `folder-plus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro folder_plus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.folder_plus(assigns2)
        mini    -> Heroicons.Mini.folder_plus(assigns2)
        outline -> Heroicons.Outline.folder_plus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.folder_plus"
      end
    end
  end

  @doc "Renders the `forward` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro forward(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.forward(assigns2)
        mini    -> Heroicons.Mini.forward(assigns2)
        outline -> Heroicons.Outline.forward(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.forward"
      end
    end
  end

  @doc "Renders the `funnel` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro funnel(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.funnel(assigns2)
        mini    -> Heroicons.Mini.funnel(assigns2)
        outline -> Heroicons.Outline.funnel(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.funnel"
      end
    end
  end

  @doc "Renders the `gif` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro gif(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.gif(assigns2)
        mini    -> Heroicons.Mini.gif(assigns2)
        outline -> Heroicons.Outline.gif(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.gif"
      end
    end
  end

  @doc "Renders the `gift` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro gift(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.gift(assigns2)
        mini    -> Heroicons.Mini.gift(assigns2)
        outline -> Heroicons.Outline.gift(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.gift"
      end
    end
  end

  @doc "Renders the `gift-top` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro gift_top(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.gift_top(assigns2)
        mini    -> Heroicons.Mini.gift_top(assigns2)
        outline -> Heroicons.Outline.gift_top(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.gift_top"
      end
    end
  end

  @doc "Renders the `globe-alt` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro globe_alt(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.globe_alt(assigns2)
        mini    -> Heroicons.Mini.globe_alt(assigns2)
        outline -> Heroicons.Outline.globe_alt(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.globe_alt"
      end
    end
  end

  @doc "Renders the `globe-americas` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro globe_americas(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.globe_americas(assigns2)
        mini    -> Heroicons.Mini.globe_americas(assigns2)
        outline -> Heroicons.Outline.globe_americas(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.globe_americas"
      end
    end
  end

  @doc "Renders the `globe-asia-australia` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro globe_asia_australia(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.globe_asia_australia(assigns2)
        mini    -> Heroicons.Mini.globe_asia_australia(assigns2)
        outline -> Heroicons.Outline.globe_asia_australia(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.globe_asia_australia"
      end
    end
  end

  @doc "Renders the `globe-europe-africa` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro globe_europe_africa(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.globe_europe_africa(assigns2)
        mini    -> Heroicons.Mini.globe_europe_africa(assigns2)
        outline -> Heroicons.Outline.globe_europe_africa(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.globe_europe_africa"
      end
    end
  end

  @doc "Renders the `hand-raised` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro hand_raised(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.hand_raised(assigns2)
        mini    -> Heroicons.Mini.hand_raised(assigns2)
        outline -> Heroicons.Outline.hand_raised(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.hand_raised"
      end
    end
  end

  @doc "Renders the `hand-thumb-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro hand_thumb_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.hand_thumb_down(assigns2)
        mini    -> Heroicons.Mini.hand_thumb_down(assigns2)
        outline -> Heroicons.Outline.hand_thumb_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.hand_thumb_down"
      end
    end
  end

  @doc "Renders the `hand-thumb-up` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro hand_thumb_up(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.hand_thumb_up(assigns2)
        mini    -> Heroicons.Mini.hand_thumb_up(assigns2)
        outline -> Heroicons.Outline.hand_thumb_up(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.hand_thumb_up"
      end
    end
  end

  @doc "Renders the `hashtag` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro hashtag(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.hashtag(assigns2)
        mini    -> Heroicons.Mini.hashtag(assigns2)
        outline -> Heroicons.Outline.hashtag(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.hashtag"
      end
    end
  end

  @doc "Renders the `heart` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro heart(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.heart(assigns2)
        mini    -> Heroicons.Mini.heart(assigns2)
        outline -> Heroicons.Outline.heart(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.heart"
      end
    end
  end

  @doc "Renders the `home` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro home(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.home(assigns2)
        mini    -> Heroicons.Mini.home(assigns2)
        outline -> Heroicons.Outline.home(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.home"
      end
    end
  end

  @doc "Renders the `home-modern` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro home_modern(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.home_modern(assigns2)
        mini    -> Heroicons.Mini.home_modern(assigns2)
        outline -> Heroicons.Outline.home_modern(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.home_modern"
      end
    end
  end

  @doc "Renders the `identification` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro identification(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.identification(assigns2)
        mini    -> Heroicons.Mini.identification(assigns2)
        outline -> Heroicons.Outline.identification(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.identification"
      end
    end
  end

  @doc "Renders the `inbox` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro inbox(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.inbox(assigns2)
        mini    -> Heroicons.Mini.inbox(assigns2)
        outline -> Heroicons.Outline.inbox(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.inbox"
      end
    end
  end

  @doc "Renders the `inbox-arrow-down` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro inbox_arrow_down(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.inbox_arrow_down(assigns2)
        mini    -> Heroicons.Mini.inbox_arrow_down(assigns2)
        outline -> Heroicons.Outline.inbox_arrow_down(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.inbox_arrow_down"
      end
    end
  end

  @doc "Renders the `inbox-stack` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro inbox_stack(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.inbox_stack(assigns2)
        mini    -> Heroicons.Mini.inbox_stack(assigns2)
        outline -> Heroicons.Outline.inbox_stack(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.inbox_stack"
      end
    end
  end

  @doc "Renders the `information-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro information_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.information_circle(assigns2)
        mini    -> Heroicons.Mini.information_circle(assigns2)
        outline -> Heroicons.Outline.information_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.information_circle"
      end
    end
  end

  @doc "Renders the `key` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro key(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.key(assigns2)
        mini    -> Heroicons.Mini.key(assigns2)
        outline -> Heroicons.Outline.key(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.key"
      end
    end
  end

  @doc "Renders the `language` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro language(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.language(assigns2)
        mini    -> Heroicons.Mini.language(assigns2)
        outline -> Heroicons.Outline.language(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.language"
      end
    end
  end

  @doc "Renders the `lifebuoy` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro lifebuoy(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.lifebuoy(assigns2)
        mini    -> Heroicons.Mini.lifebuoy(assigns2)
        outline -> Heroicons.Outline.lifebuoy(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.lifebuoy"
      end
    end
  end

  @doc "Renders the `light-bulb` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro light_bulb(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.light_bulb(assigns2)
        mini    -> Heroicons.Mini.light_bulb(assigns2)
        outline -> Heroicons.Outline.light_bulb(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.light_bulb"
      end
    end
  end

  @doc "Renders the `link` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro link(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.link(assigns2)
        mini    -> Heroicons.Mini.link(assigns2)
        outline -> Heroicons.Outline.link(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.link"
      end
    end
  end

  @doc "Renders the `list-bullet` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro list_bullet(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.list_bullet(assigns2)
        mini    -> Heroicons.Mini.list_bullet(assigns2)
        outline -> Heroicons.Outline.list_bullet(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.list_bullet"
      end
    end
  end

  @doc "Renders the `lock-closed` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro lock_closed(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.lock_closed(assigns2)
        mini    -> Heroicons.Mini.lock_closed(assigns2)
        outline -> Heroicons.Outline.lock_closed(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.lock_closed"
      end
    end
  end

  @doc "Renders the `lock-open` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro lock_open(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.lock_open(assigns2)
        mini    -> Heroicons.Mini.lock_open(assigns2)
        outline -> Heroicons.Outline.lock_open(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.lock_open"
      end
    end
  end

  @doc "Renders the `magnifying-glass` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro magnifying_glass(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.magnifying_glass(assigns2)
        mini    -> Heroicons.Mini.magnifying_glass(assigns2)
        outline -> Heroicons.Outline.magnifying_glass(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.magnifying_glass"
      end
    end
  end

  @doc "Renders the `magnifying-glass-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro magnifying_glass_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.magnifying_glass_circle(assigns2)
        mini    -> Heroicons.Mini.magnifying_glass_circle(assigns2)
        outline -> Heroicons.Outline.magnifying_glass_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.magnifying_glass_circle"
      end
    end
  end

  @doc "Renders the `magnifying-glass-minus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro magnifying_glass_minus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.magnifying_glass_minus(assigns2)
        mini    -> Heroicons.Mini.magnifying_glass_minus(assigns2)
        outline -> Heroicons.Outline.magnifying_glass_minus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.magnifying_glass_minus"
      end
    end
  end

  @doc "Renders the `magnifying-glass-plus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro magnifying_glass_plus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.magnifying_glass_plus(assigns2)
        mini    -> Heroicons.Mini.magnifying_glass_plus(assigns2)
        outline -> Heroicons.Outline.magnifying_glass_plus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.magnifying_glass_plus"
      end
    end
  end

  @doc "Renders the `map` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro map(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.map(assigns2)
        mini    -> Heroicons.Mini.map(assigns2)
        outline -> Heroicons.Outline.map(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.map"
      end
    end
  end

  @doc "Renders the `map-pin` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro map_pin(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.map_pin(assigns2)
        mini    -> Heroicons.Mini.map_pin(assigns2)
        outline -> Heroicons.Outline.map_pin(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.map_pin"
      end
    end
  end

  @doc "Renders the `megaphone` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro megaphone(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.megaphone(assigns2)
        mini    -> Heroicons.Mini.megaphone(assigns2)
        outline -> Heroicons.Outline.megaphone(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.megaphone"
      end
    end
  end

  @doc "Renders the `microphone` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro microphone(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.microphone(assigns2)
        mini    -> Heroicons.Mini.microphone(assigns2)
        outline -> Heroicons.Outline.microphone(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.microphone"
      end
    end
  end

  @doc "Renders the `minus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro minus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.minus(assigns2)
        mini    -> Heroicons.Mini.minus(assigns2)
        outline -> Heroicons.Outline.minus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.minus"
      end
    end
  end

  @doc "Renders the `minus-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro minus_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.minus_circle(assigns2)
        mini    -> Heroicons.Mini.minus_circle(assigns2)
        outline -> Heroicons.Outline.minus_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.minus_circle"
      end
    end
  end

  @doc "Renders the `minus-small` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro minus_small(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.minus_small(assigns2)
        mini    -> Heroicons.Mini.minus_small(assigns2)
        outline -> Heroicons.Outline.minus_small(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.minus_small"
      end
    end
  end

  @doc "Renders the `moon` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro moon(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.moon(assigns2)
        mini    -> Heroicons.Mini.moon(assigns2)
        outline -> Heroicons.Outline.moon(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.moon"
      end
    end
  end

  @doc "Renders the `musical-note` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro musical_note(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.musical_note(assigns2)
        mini    -> Heroicons.Mini.musical_note(assigns2)
        outline -> Heroicons.Outline.musical_note(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.musical_note"
      end
    end
  end

  @doc "Renders the `newspaper` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro newspaper(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.newspaper(assigns2)
        mini    -> Heroicons.Mini.newspaper(assigns2)
        outline -> Heroicons.Outline.newspaper(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.newspaper"
      end
    end
  end

  @doc "Renders the `no-symbol` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro no_symbol(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.no_symbol(assigns2)
        mini    -> Heroicons.Mini.no_symbol(assigns2)
        outline -> Heroicons.Outline.no_symbol(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.no_symbol"
      end
    end
  end

  @doc "Renders the `paint-brush` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro paint_brush(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.paint_brush(assigns2)
        mini    -> Heroicons.Mini.paint_brush(assigns2)
        outline -> Heroicons.Outline.paint_brush(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.paint_brush"
      end
    end
  end

  @doc "Renders the `paper-airplane` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro paper_airplane(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.paper_airplane(assigns2)
        mini    -> Heroicons.Mini.paper_airplane(assigns2)
        outline -> Heroicons.Outline.paper_airplane(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.paper_airplane"
      end
    end
  end

  @doc "Renders the `paper-clip` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro paper_clip(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.paper_clip(assigns2)
        mini    -> Heroicons.Mini.paper_clip(assigns2)
        outline -> Heroicons.Outline.paper_clip(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.paper_clip"
      end
    end
  end

  @doc "Renders the `pause` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro pause(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.pause(assigns2)
        mini    -> Heroicons.Mini.pause(assigns2)
        outline -> Heroicons.Outline.pause(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.pause"
      end
    end
  end

  @doc "Renders the `pause-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro pause_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.pause_circle(assigns2)
        mini    -> Heroicons.Mini.pause_circle(assigns2)
        outline -> Heroicons.Outline.pause_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.pause_circle"
      end
    end
  end

  @doc "Renders the `pencil` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro pencil(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.pencil(assigns2)
        mini    -> Heroicons.Mini.pencil(assigns2)
        outline -> Heroicons.Outline.pencil(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.pencil"
      end
    end
  end

  @doc "Renders the `pencil-square` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro pencil_square(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.pencil_square(assigns2)
        mini    -> Heroicons.Mini.pencil_square(assigns2)
        outline -> Heroicons.Outline.pencil_square(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.pencil_square"
      end
    end
  end

  @doc "Renders the `phone` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro phone(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.phone(assigns2)
        mini    -> Heroicons.Mini.phone(assigns2)
        outline -> Heroicons.Outline.phone(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.phone"
      end
    end
  end

  @doc "Renders the `phone-arrow-down-left` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro phone_arrow_down_left(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.phone_arrow_down_left(assigns2)
        mini    -> Heroicons.Mini.phone_arrow_down_left(assigns2)
        outline -> Heroicons.Outline.phone_arrow_down_left(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.phone_arrow_down_left"
      end
    end
  end

  @doc "Renders the `phone-arrow-up-right` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro phone_arrow_up_right(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.phone_arrow_up_right(assigns2)
        mini    -> Heroicons.Mini.phone_arrow_up_right(assigns2)
        outline -> Heroicons.Outline.phone_arrow_up_right(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.phone_arrow_up_right"
      end
    end
  end

  @doc "Renders the `phone-x-mark` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro phone_x_mark(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.phone_x_mark(assigns2)
        mini    -> Heroicons.Mini.phone_x_mark(assigns2)
        outline -> Heroicons.Outline.phone_x_mark(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.phone_x_mark"
      end
    end
  end

  @doc "Renders the `photo` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro photo(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.photo(assigns2)
        mini    -> Heroicons.Mini.photo(assigns2)
        outline -> Heroicons.Outline.photo(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.photo"
      end
    end
  end

  @doc "Renders the `play` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro play(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.play(assigns2)
        mini    -> Heroicons.Mini.play(assigns2)
        outline -> Heroicons.Outline.play(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.play"
      end
    end
  end

  @doc "Renders the `play-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro play_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.play_circle(assigns2)
        mini    -> Heroicons.Mini.play_circle(assigns2)
        outline -> Heroicons.Outline.play_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.play_circle"
      end
    end
  end

  @doc "Renders the `play-pause` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro play_pause(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.play_pause(assigns2)
        mini    -> Heroicons.Mini.play_pause(assigns2)
        outline -> Heroicons.Outline.play_pause(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.play_pause"
      end
    end
  end

  @doc "Renders the `plus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro plus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.plus(assigns2)
        mini    -> Heroicons.Mini.plus(assigns2)
        outline -> Heroicons.Outline.plus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.plus"
      end
    end
  end

  @doc "Renders the `plus-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro plus_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.plus_circle(assigns2)
        mini    -> Heroicons.Mini.plus_circle(assigns2)
        outline -> Heroicons.Outline.plus_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.plus_circle"
      end
    end
  end

  @doc "Renders the `plus-small` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro plus_small(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.plus_small(assigns2)
        mini    -> Heroicons.Mini.plus_small(assigns2)
        outline -> Heroicons.Outline.plus_small(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.plus_small"
      end
    end
  end

  @doc "Renders the `power` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro power(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.power(assigns2)
        mini    -> Heroicons.Mini.power(assigns2)
        outline -> Heroicons.Outline.power(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.power"
      end
    end
  end

  @doc "Renders the `presentation-chart-bar` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro presentation_chart_bar(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.presentation_chart_bar(assigns2)
        mini    -> Heroicons.Mini.presentation_chart_bar(assigns2)
        outline -> Heroicons.Outline.presentation_chart_bar(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.presentation_chart_bar"
      end
    end
  end

  @doc "Renders the `presentation-chart-line` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro presentation_chart_line(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.presentation_chart_line(assigns2)
        mini    -> Heroicons.Mini.presentation_chart_line(assigns2)
        outline -> Heroicons.Outline.presentation_chart_line(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.presentation_chart_line"
      end
    end
  end

  @doc "Renders the `printer` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro printer(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.printer(assigns2)
        mini    -> Heroicons.Mini.printer(assigns2)
        outline -> Heroicons.Outline.printer(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.printer"
      end
    end
  end

  @doc "Renders the `puzzle-piece` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro puzzle_piece(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.puzzle_piece(assigns2)
        mini    -> Heroicons.Mini.puzzle_piece(assigns2)
        outline -> Heroicons.Outline.puzzle_piece(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.puzzle_piece"
      end
    end
  end

  @doc "Renders the `qr-code` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro qr_code(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.qr_code(assigns2)
        mini    -> Heroicons.Mini.qr_code(assigns2)
        outline -> Heroicons.Outline.qr_code(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.qr_code"
      end
    end
  end

  @doc "Renders the `question-mark-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro question_mark_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.question_mark_circle(assigns2)
        mini    -> Heroicons.Mini.question_mark_circle(assigns2)
        outline -> Heroicons.Outline.question_mark_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.question_mark_circle"
      end
    end
  end

  @doc "Renders the `queue-list` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro queue_list(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.queue_list(assigns2)
        mini    -> Heroicons.Mini.queue_list(assigns2)
        outline -> Heroicons.Outline.queue_list(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.queue_list"
      end
    end
  end

  @doc "Renders the `radio` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro radio(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.radio(assigns2)
        mini    -> Heroicons.Mini.radio(assigns2)
        outline -> Heroicons.Outline.radio(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.radio"
      end
    end
  end

  @doc "Renders the `receipt-percent` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro receipt_percent(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.receipt_percent(assigns2)
        mini    -> Heroicons.Mini.receipt_percent(assigns2)
        outline -> Heroicons.Outline.receipt_percent(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.receipt_percent"
      end
    end
  end

  @doc "Renders the `receipt-refund` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro receipt_refund(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.receipt_refund(assigns2)
        mini    -> Heroicons.Mini.receipt_refund(assigns2)
        outline -> Heroicons.Outline.receipt_refund(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.receipt_refund"
      end
    end
  end

  @doc "Renders the `rectangle-group` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro rectangle_group(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.rectangle_group(assigns2)
        mini    -> Heroicons.Mini.rectangle_group(assigns2)
        outline -> Heroicons.Outline.rectangle_group(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.rectangle_group"
      end
    end
  end

  @doc "Renders the `rectangle-stack` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro rectangle_stack(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.rectangle_stack(assigns2)
        mini    -> Heroicons.Mini.rectangle_stack(assigns2)
        outline -> Heroicons.Outline.rectangle_stack(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.rectangle_stack"
      end
    end
  end

  @doc "Renders the `rocket-launch` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro rocket_launch(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.rocket_launch(assigns2)
        mini    -> Heroicons.Mini.rocket_launch(assigns2)
        outline -> Heroicons.Outline.rocket_launch(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.rocket_launch"
      end
    end
  end

  @doc "Renders the `rss` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro rss(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.rss(assigns2)
        mini    -> Heroicons.Mini.rss(assigns2)
        outline -> Heroicons.Outline.rss(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.rss"
      end
    end
  end

  @doc "Renders the `scale` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro scale(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.scale(assigns2)
        mini    -> Heroicons.Mini.scale(assigns2)
        outline -> Heroicons.Outline.scale(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.scale"
      end
    end
  end

  @doc "Renders the `scissors` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro scissors(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.scissors(assigns2)
        mini    -> Heroicons.Mini.scissors(assigns2)
        outline -> Heroicons.Outline.scissors(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.scissors"
      end
    end
  end

  @doc "Renders the `server` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro server(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.server(assigns2)
        mini    -> Heroicons.Mini.server(assigns2)
        outline -> Heroicons.Outline.server(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.server"
      end
    end
  end

  @doc "Renders the `server-stack` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro server_stack(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.server_stack(assigns2)
        mini    -> Heroicons.Mini.server_stack(assigns2)
        outline -> Heroicons.Outline.server_stack(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.server_stack"
      end
    end
  end

  @doc "Renders the `share` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro share(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.share(assigns2)
        mini    -> Heroicons.Mini.share(assigns2)
        outline -> Heroicons.Outline.share(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.share"
      end
    end
  end

  @doc "Renders the `shield-check` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro shield_check(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.shield_check(assigns2)
        mini    -> Heroicons.Mini.shield_check(assigns2)
        outline -> Heroicons.Outline.shield_check(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.shield_check"
      end
    end
  end

  @doc "Renders the `shield-exclamation` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro shield_exclamation(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.shield_exclamation(assigns2)
        mini    -> Heroicons.Mini.shield_exclamation(assigns2)
        outline -> Heroicons.Outline.shield_exclamation(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.shield_exclamation"
      end
    end
  end

  @doc "Renders the `shopping-bag` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro shopping_bag(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.shopping_bag(assigns2)
        mini    -> Heroicons.Mini.shopping_bag(assigns2)
        outline -> Heroicons.Outline.shopping_bag(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.shopping_bag"
      end
    end
  end

  @doc "Renders the `shopping-cart` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro shopping_cart(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.shopping_cart(assigns2)
        mini    -> Heroicons.Mini.shopping_cart(assigns2)
        outline -> Heroicons.Outline.shopping_cart(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.shopping_cart"
      end
    end
  end

  @doc "Renders the `signal` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro signal(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.signal(assigns2)
        mini    -> Heroicons.Mini.signal(assigns2)
        outline -> Heroicons.Outline.signal(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.signal"
      end
    end
  end

  @doc "Renders the `signal-slash` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro signal_slash(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.signal_slash(assigns2)
        mini    -> Heroicons.Mini.signal_slash(assigns2)
        outline -> Heroicons.Outline.signal_slash(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.signal_slash"
      end
    end
  end

  @doc "Renders the `sparkles` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro sparkles(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.sparkles(assigns2)
        mini    -> Heroicons.Mini.sparkles(assigns2)
        outline -> Heroicons.Outline.sparkles(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.sparkles"
      end
    end
  end

  @doc "Renders the `speaker-wave` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro speaker_wave(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.speaker_wave(assigns2)
        mini    -> Heroicons.Mini.speaker_wave(assigns2)
        outline -> Heroicons.Outline.speaker_wave(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.speaker_wave"
      end
    end
  end

  @doc "Renders the `speaker-x-mark` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro speaker_x_mark(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.speaker_x_mark(assigns2)
        mini    -> Heroicons.Mini.speaker_x_mark(assigns2)
        outline -> Heroicons.Outline.speaker_x_mark(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.speaker_x_mark"
      end
    end
  end

  @doc "Renders the `square-2-stack` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro square_2_stack(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.square_2_stack(assigns2)
        mini    -> Heroicons.Mini.square_2_stack(assigns2)
        outline -> Heroicons.Outline.square_2_stack(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.square_2_stack"
      end
    end
  end

  @doc "Renders the `square-3-stack-3d` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro square_3_stack_3d(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.square_3_stack_3d(assigns2)
        mini    -> Heroicons.Mini.square_3_stack_3d(assigns2)
        outline -> Heroicons.Outline.square_3_stack_3d(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.square_3_stack_3d"
      end
    end
  end

  @doc "Renders the `squares-2x2` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro squares_2x2(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.squares_2x2(assigns2)
        mini    -> Heroicons.Mini.squares_2x2(assigns2)
        outline -> Heroicons.Outline.squares_2x2(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.squares_2x2"
      end
    end
  end

  @doc "Renders the `squares-plus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro squares_plus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.squares_plus(assigns2)
        mini    -> Heroicons.Mini.squares_plus(assigns2)
        outline -> Heroicons.Outline.squares_plus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.squares_plus"
      end
    end
  end

  @doc "Renders the `star` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro star(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.star(assigns2)
        mini    -> Heroicons.Mini.star(assigns2)
        outline -> Heroicons.Outline.star(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.star"
      end
    end
  end

  @doc "Renders the `stop` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro stop(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.stop(assigns2)
        mini    -> Heroicons.Mini.stop(assigns2)
        outline -> Heroicons.Outline.stop(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.stop"
      end
    end
  end

  @doc "Renders the `stop-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro stop_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.stop_circle(assigns2)
        mini    -> Heroicons.Mini.stop_circle(assigns2)
        outline -> Heroicons.Outline.stop_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.stop_circle"
      end
    end
  end

  @doc "Renders the `sun` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro sun(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.sun(assigns2)
        mini    -> Heroicons.Mini.sun(assigns2)
        outline -> Heroicons.Outline.sun(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.sun"
      end
    end
  end

  @doc "Renders the `swatch` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro swatch(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.swatch(assigns2)
        mini    -> Heroicons.Mini.swatch(assigns2)
        outline -> Heroicons.Outline.swatch(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.swatch"
      end
    end
  end

  @doc "Renders the `table-cells` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro table_cells(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.table_cells(assigns2)
        mini    -> Heroicons.Mini.table_cells(assigns2)
        outline -> Heroicons.Outline.table_cells(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.table_cells"
      end
    end
  end

  @doc "Renders the `tag` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro tag(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.tag(assigns2)
        mini    -> Heroicons.Mini.tag(assigns2)
        outline -> Heroicons.Outline.tag(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.tag"
      end
    end
  end

  @doc "Renders the `ticket` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro ticket(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.ticket(assigns2)
        mini    -> Heroicons.Mini.ticket(assigns2)
        outline -> Heroicons.Outline.ticket(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.ticket"
      end
    end
  end

  @doc "Renders the `trash` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro trash(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.trash(assigns2)
        mini    -> Heroicons.Mini.trash(assigns2)
        outline -> Heroicons.Outline.trash(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.trash"
      end
    end
  end

  @doc "Renders the `trophy` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro trophy(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.trophy(assigns2)
        mini    -> Heroicons.Mini.trophy(assigns2)
        outline -> Heroicons.Outline.trophy(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.trophy"
      end
    end
  end

  @doc "Renders the `truck` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro truck(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.truck(assigns2)
        mini    -> Heroicons.Mini.truck(assigns2)
        outline -> Heroicons.Outline.truck(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.truck"
      end
    end
  end

  @doc "Renders the `tv` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro tv(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.tv(assigns2)
        mini    -> Heroicons.Mini.tv(assigns2)
        outline -> Heroicons.Outline.tv(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.tv"
      end
    end
  end

  @doc "Renders the `user` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro user(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.user(assigns2)
        mini    -> Heroicons.Mini.user(assigns2)
        outline -> Heroicons.Outline.user(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.user"
      end
    end
  end

  @doc "Renders the `user-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro user_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.user_circle(assigns2)
        mini    -> Heroicons.Mini.user_circle(assigns2)
        outline -> Heroicons.Outline.user_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.user_circle"
      end
    end
  end

  @doc "Renders the `user-group` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro user_group(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.user_group(assigns2)
        mini    -> Heroicons.Mini.user_group(assigns2)
        outline -> Heroicons.Outline.user_group(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.user_group"
      end
    end
  end

  @doc "Renders the `user-minus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro user_minus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.user_minus(assigns2)
        mini    -> Heroicons.Mini.user_minus(assigns2)
        outline -> Heroicons.Outline.user_minus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.user_minus"
      end
    end
  end

  @doc "Renders the `user-plus` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro user_plus(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.user_plus(assigns2)
        mini    -> Heroicons.Mini.user_plus(assigns2)
        outline -> Heroicons.Outline.user_plus(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.user_plus"
      end
    end
  end

  @doc "Renders the `users` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro users(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.users(assigns2)
        mini    -> Heroicons.Mini.users(assigns2)
        outline -> Heroicons.Outline.users(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.users"
      end
    end
  end

  @doc "Renders the `variable` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro variable(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.variable(assigns2)
        mini    -> Heroicons.Mini.variable(assigns2)
        outline -> Heroicons.Outline.variable(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.variable"
      end
    end
  end

  @doc "Renders the `video-camera` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro video_camera(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.video_camera(assigns2)
        mini    -> Heroicons.Mini.video_camera(assigns2)
        outline -> Heroicons.Outline.video_camera(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.video_camera"
      end
    end
  end

  @doc "Renders the `video-camera-slash` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro video_camera_slash(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.video_camera_slash(assigns2)
        mini    -> Heroicons.Mini.video_camera_slash(assigns2)
        outline -> Heroicons.Outline.video_camera_slash(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.video_camera_slash"
      end
    end
  end

  @doc "Renders the `view-columns` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro view_columns(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.view_columns(assigns2)
        mini    -> Heroicons.Mini.view_columns(assigns2)
        outline -> Heroicons.Outline.view_columns(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.view_columns"
      end
    end
  end

  @doc "Renders the `viewfinder-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro viewfinder_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.viewfinder_circle(assigns2)
        mini    -> Heroicons.Mini.viewfinder_circle(assigns2)
        outline -> Heroicons.Outline.viewfinder_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.viewfinder_circle"
      end
    end
  end

  @doc "Renders the `wallet` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro wallet(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.wallet(assigns2)
        mini    -> Heroicons.Mini.wallet(assigns2)
        outline -> Heroicons.Outline.wallet(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.wallet"
      end
    end
  end

  @doc "Renders the `wifi` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro wifi(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.wifi(assigns2)
        mini    -> Heroicons.Mini.wifi(assigns2)
        outline -> Heroicons.Outline.wifi(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.wifi"
      end
    end
  end

  @doc "Renders the `window` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro window(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.window(assigns2)
        mini    -> Heroicons.Mini.window(assigns2)
        outline -> Heroicons.Outline.window(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.window"
      end
    end
  end

  @doc "Renders the `wrench` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro wrench(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.wrench(assigns2)
        mini    -> Heroicons.Mini.wrench(assigns2)
        outline -> Heroicons.Outline.wrench(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.wrench"
      end
    end
  end

  @doc "Renders the `wrench-screwdriver` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro wrench_screwdriver(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.wrench_screwdriver(assigns2)
        mini    -> Heroicons.Mini.wrench_screwdriver(assigns2)
        outline -> Heroicons.Outline.wrench_screwdriver(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.wrench_screwdriver"
      end
    end
  end

  @doc "Renders the `x-circle` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro x_circle(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.x_circle(assigns2)
        mini    -> Heroicons.Mini.x_circle(assigns2)
        outline -> Heroicons.Outline.x_circle(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.x_circle"
      end
    end
  end

  @doc "Renders the `x-mark` icon."
  # attr :outline, :boolean, doc: "Outline icon type", default: true
  # attr :solid,   :boolean, doc: "Solid icon type"
  # attr :mini,    :boolean, doc: "Mini icon type"
  # attr :title,   :string
  # attr :class,   :string
  # attr :rest,    :global,  doc: "HTML attributes for the svg container"
  defmacro x_mark(assigns) do
    quote do
      assigns2 = Heroicons.Icon.remove_attrs(unquote(assigns))
      solid    = unquote(assigns)[:solid]
      mini     = unquote(assigns)[:mini]
      outline  = unquote(assigns)[:outline]
      cond do
        solid   -> Heroicons.Solid.x_mark(assigns2)
        mini    -> Heroicons.Mini.x_mark(assigns2)
        outline -> Heroicons.Outline.x_mark(assigns2)
        true    -> raise "Missing solid|outline|mini icon type for Icon.x_mark"
      end
    end
  end

end
