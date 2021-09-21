# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :graphql_api,
  ecto_repos: [GraphqlApi.Repo]

# Configures the endpoint
config :graphql_api, GraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4XU0GsF32mfGkB4kR7bUEXGj3iuO/SUR9wAFc67F+x4Gd/GWK5WH6o+8DmkVfprY",
  render_errors: [view: GraphqlApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: GraphqlApi.PubSub,
  live_view: [signing_salt: "N08BwA7U"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
