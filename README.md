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
