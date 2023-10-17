# Heroicons for Elixir

This project generates solid, outline, and mini SVG icons from the
[Heroicons](https://heroicons.com/) repository.

## Author

Serge Aleynikov

## Installation

The package can be installed by adding `heroiconex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:heroiconex, "~> 2.0"}
  ]
end
```

The project's version matches the version number of Heroicons.

## Updating to the latest Heroicons

Run `make generate`.  It will generate the `lib/*.ex` files using the
[latest heroicon release](https://github.com/tailwindlabs/heroicons/releases/latest).

## Usage

In your Phoenix project use the tags referencing functions implemented in this
application.

The function names for icons use underscores instead of hyphens.

The following alternatives are available:

- Using functions in the `Heroicons.Solid`, `Heroicons.Outline`, and
`Heroicons.Mini` modules to use icon functions statically:
```html
<Heroicons.Solid.academic_cap class="w-5 h-5"/>
<Heroicons.Solid.academic_cap title="Some title" class="w-5 h-5"/>

<Heroicons.Outline.academic_cap class="w-5 h-5"/>
<Heroicons.Outline.academic_cap title="Some title" class="w-5 h-5"/>

<Heroicons.Mini.academic_cap class="w-5 h-5"/>
<Heroicons.Mini.academic_cap title="Some title" class="w-5 h-5"/>
```

- Using the `Heroicons.icon/1` function to render icons names dynamically
```html
<Heroicons.icon name="academic-cap" solid class="w-5 h-5"/>
<Heroicons.icon name="academic-cap" solid title="Some title" class="w-5 h-5"/>

<Heroicons.icon name="academic-cap" class="w-5 h-5"/>
<Heroicons.icon name="academic-cap" title="Some title" class="w-5 h-5"/>

<Heroicons.icon name="academic-cap" mini class="w-5 h-5"/>
<Heroicons.icon name="academic-cap" mini title="Some title" class="w-5 h-5"/>
```

- Using the macros in the `Heroicons.Icon` module to use icon names statically:
```html
<Heroicons.Icon.academic_cap solid class="w-5 h-5"/>
<Heroicons.Icon.academic_cap solid title="Some title" class="w-5 h-5"/>

<Heroicons.Icon.academic_cap class="w-5 h-5"/>
<Heroicons.Icon.academic_cap title="Some title" class="w-5 h-5"/>

<Heroicons.Icon.academic_cap mini class="w-5 h-5"/>
<Heroicons.Icon.academic_cap mini title="Some title" class="w-5 h-5"/>
```
