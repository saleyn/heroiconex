defmodule Heroicons.CodegenTest do
  use ExUnit.Case

  defmodule Render do
    use     Phoenix.Component
    require Heroicons
    require Heroicons.Icon

    def render1(assigns) do
      ~H"""
      <Heroicons.Solid.arrow_long_down title="test" class="h-10 w-10"/>
      """
    end

    def render2(assigns) do
      ~H"""
      <Heroicons.icon title="test" style="solid" type="arrow_long_down"/>
      """
    end

    def render_solid(assigns) do
      ~H"""
      <Heroicons.icon name="academic-cap" solid   title="test1" class="h-4 w-4"/>
      """
    end

    def render_solid2(assigns) do
      ~H"""
      <Heroicons.icon name={:academic_cap} solid   title="test1" class="h-4 w-4"/>
      """
    end

    def render_outline(assigns) do
      ~H"""
      <Heroicons.icon name="academic-cap" outline title="test2" class="h-4 w-4"/>
      """
    end

    def render_mini(assigns) do
      ~H"""
      <Heroicons.icon name="academic-cap" mini    title="test3"/>
      """
    end

    def render_mini_macro(assigns) do
      ~H"""
      <Heroicons.Icon.academic_cap mini title="test4"/>
      """
    end
  end

  test "Icon test" do
    assert Phoenix.Template.render_to_string(Render, "render1", "html", %{})
        =~ ~r"<svg class=\"h-10 w-10\" aria-hidden=\"true\""

    assert Phoenix.Template.render_to_string(Render, "render2", "html", %{})
        =~ ~r"<svg aria-hidden=\"true\" fill=\"currentColor\""

    solid1 = Phoenix.Template.render_to_string(Render, "render_solid", "html", %{})

    assert solid1 =~ ~r"<svg class=\"h-4 w-4\" aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 24 24\""
    assert solid1 =~ ~r"<path d=\"M11.7 2.805a.75.75"

    solid2 = Phoenix.Template.render_to_string(Render, "render_solid2", "html", %{})

    assert solid1 == solid2

    outline = Phoenix.Template.render_to_string(Render, "render_outline", "html", %{})

    assert outline =~ ~r"<svg class=\"h-4 w-4\" aria-hidden=\"true\" fill=\"none\" viewBox=\"0 0 24 24\""
    assert outline =~ ~r"<path stroke-linecap=\"round\""

    mini = Phoenix.Template.render_to_string(Render, "render_mini", "html", %{})

    assert mini =~ ~r"<svg aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 20 20\""
    assert mini =~ ~r"<path fill-rule=\"evenodd\" d=\"M9.664 1.319a.75.75"

    mini = Phoenix.Template.render_to_string(Render, "render_mini_macro", "html", %{})

    assert mini =~ ~r"<svg aria-hidden=\"true\" fill=\"currentColor\" viewBox=\"0 0 20 20\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 20 20\""
    assert mini =~ ~r"<path fill-rule=\"evenodd\" d=\"M9.664 1.319a.75.75"
  end

end
