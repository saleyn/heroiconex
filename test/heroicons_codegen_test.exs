defmodule Heroicons.CodegenTest do
  use ExUnit.Case

  defmodule Render do
    use Phoenix.Component

    def render1(assigns) do
      ~H"""
      <Heroicons.Solid.arrow_long_down title="test" class="h-10 w-10"/>
      """
    end

    def render2(assigns) do
      ~H"""
      <Heroicon.icon title="test" style="solid" type="arrow_long_down"/>
      """
    end
  end

  test "Icon test" do
    assert Phoenix.Template.render_to_string(Render, "render1", "html", %{}) =~ ~r"<svg class=\"h-10 w-10\" aria-hidden=\"true\""
    assert Phoenix.Template.render_to_string(Render, "render2", "html", %{}) =~ ~r"<svg aria-hidden=\"true\" fill=\"currentColor\""
  end

end
