# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :html_testr,
  ecto_repos: [HtmlTestr.Repo]

# Configures the endpoint
config :html_testr, HtmlTestr.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cohy5giA4TkvkealuMcU7fK4oQvKJI48qul//iqJSKhxOPzHnOtg7qjny9acD8Kg",
  render_errors: [view: HtmlTestr.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HtmlTestr.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
