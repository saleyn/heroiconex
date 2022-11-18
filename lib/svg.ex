defmodule Heroicons.Helpers.Svg do
  @moduledoc """
  SVG helper component
  """
  use Phoenix.Component

  attr :title, :string, default: nil
  attr :class, :string, default: nil
  attr :rest,  :global, default: %{class: "bg-blue-200"}
  slot :inner_block, required: true

  def icon(assigns) do
    ~H"""
    <svg class={@class} {@rest} xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
      <%= if not is_nil(@title) do %>
        <title><%= @title %></title>
      <% end %>
      <%= render_slot(@inner_block) %>
    </svg>
    """
  end
end
