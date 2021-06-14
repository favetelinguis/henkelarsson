# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :henkelarsson,
  ecto_repos: [Henkelarsson.Repo]

# Configures the endpoint
config :henkelarsson, HenkelarssonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "I7wS7vQ72HqcuIqX8RhRxEPx7m8AKSuTp/6Ads/g9RcMu3VsCPOzMkV2OaDCmpq3",
  render_errors: [view: HenkelarssonWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Henkelarsson.PubSub,
  live_view: [signing_salt: "SSp25tFP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
