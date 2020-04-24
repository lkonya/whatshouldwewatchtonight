# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :whatshouldwewatchtonight,
  ecto_repos: [Whatshouldwewatchtonight.Repo]

# Configures the endpoint
config :whatshouldwewatchtonight, WhatshouldwewatchtonightWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SDm8uMinGV4OKmDtWKG3GnkRVW9qvUKbI/nyfc2YFGqtr9vhCTPOsybiFKxsoO+v",
  render_errors: [view: WhatshouldwewatchtonightWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Whatshouldwewatchtonight.PubSub,
  live_view: [signing_salt: "S8yqTKe4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
