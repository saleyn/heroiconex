defmodule HeroiconsCodegenTest do
  use ExUnit.Case
  use Phoenix.Component

  def render(assigns) do
    ~H"""
    <Heroicons.Solid.arrow_long_down title="test" class="h-10 w-10"/>
    """
  end

  test "Icon test" do
    assert "" == Phoenix.Template.render_to_string(__MODULE__, "render", "html", %{})
  end
end
