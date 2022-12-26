defmodule Heroicon do
  def icon(assigns) do
    {icon,  assigns} = Map.pop!(assigns, :type)
    {style, assigns} = Map.pop!(assigns, :style)
    icon = to_atom(icon)
    mod  =
      case style do
        "solid"   -> Heroicons.Solid
        "outline" -> Heroicons.Outline
        "mini"    -> Heroicons.Mini
      end

    :erlang.function_exported(mod, icon, 1) ||
      raise ArgumentError, message: "Invalid Hero icon type '#{icon}'"

    apply(mod, icon, [assigns])
  end

  defp to_atom(s) when is_binary(s), do: String.to_existing_atom(s)
  defp to_atom(s) when is_atom(s),   do: s
end

defmodule Heroicons.Helpers.Svg do
  @moduledoc """
  SVG helper component
  """
  use Phoenix.Component

  attr :title, :string, default: nil
  attr :class, :string, default: nil
  attr :rest,  :global, doc: "HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :paths, :string, required: true

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
