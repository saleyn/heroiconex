# Heroicons for Elixir

This project generates solid, outline, and mini SVG icons from the Heroicons repository

## Author

Serge Aleynikov

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `heroiconex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:heroiconex, "~> 0.1.0"}
  ]
end
```

## Updating to the latest Heroicons

Run `make rebuild`.  It will generate the `lib/*.ex` files using the
[latest heroicon release](https://github.com/tailwindlabs/heroicons/releases/latest).

## Usage

In your Phoenix project use the following tags, where `home` represents the home icon:
```
<Heroicons.Solid.home class="w-5 h-5"/>
<Heroicons.Solid.home title="Some title" class="w-5 h-5"/>

<Heroicons.Outline.home class="w-5 h-5"/>
<Heroicons.Outline.home title="Some title" class="w-5 h-5"/>

<Heroicons.Mini.home class="w-5 h-5"/>
<Heroicons.Mini.home title="Some title" class="w-5 h-5"/>
```

The function names for icons use underscores instead of hyphens.
