# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :condolavi,
  ecto_repos: [Condolavi.Repo]

# Configures the endpoint
config :condolavi, CondolaviWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JJEuXNxbUwyABheoRNz4HilEOuiqQrDUSJtQQ/kw202QNDz06XPIWb7YZV1Q9PTj",
  render_errors: [view: CondolaviWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Condolavi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
