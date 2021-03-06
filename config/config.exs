# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :leeyongkyu,
  ecto_repos: [Leeyongkyu.Repo]

# Configures the endpoint
config :leeyongkyu, LeeyongkyuWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ndzw0pdpDYEJ3/2jm62n16ONsv6P2ZBzC6XurRCsOnl+BK64r4xSWNcbMpG5INp9",
  render_errors: [view: LeeyongkyuWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Leeyongkyu.PubSub,
  live_view: [signing_salt: "ra8+RJ2x"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
