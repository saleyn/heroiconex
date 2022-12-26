import Config

if Mix.env() in [:dev, :test] do
  config :phoenix, :json_library, Jason
end
