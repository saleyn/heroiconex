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

In your Phoenix project use the following tags, where `home` represents the home icon:
```html
<Heroicons.Solid.home class="w-5 h-5"/>
<Heroicons.Solid.home title="Some title" class="w-5 h-5"/>

<Heroicons.Outline.home class="w-5 h-5"/>
<Heroicons.Outline.home title="Some title" class="w-5 h-5"/>

<Heroicons.Mini.home class="w-5 h-5"/>
<Heroicons.Mini.home title="Some title" class="w-5 h-5"/>
```

The function names for icons use underscores instead of hyphens.
