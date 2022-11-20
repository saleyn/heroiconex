defmodule Heroicons.<%= String.capitalize(@type) %> do
  @moduledoc """
  ## Heroicons License
  MIT License
  Copyright (c) 2020 Refactoring UI Inc.
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:
  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  """
  use   Phoenix.Component
  alias Heroicons.Helpers.Svg
<%= for {name, content} <- @icons, fun = String.replace(name, "-", "_") do %>
  @doc "Renders the `<%= name %>` icon"
  attr :rest,  :global, doc: "HTML attributes for the svg container"
  attr :title, :string
  attr :class, :string
  def <%= fun %>(assigns), do:
    Svg.icon(assign(assigns, paths:
      ~S|<%= content %>|
    ))
<% end %>
end