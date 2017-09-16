# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :genderBiasSurvey,
  ecto_repos: [GenderBiasSurvey.Repo]

# Configures the endpoint
config :genderBiasSurvey, GenderBiasSurveyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0B1SjNbkGHML/8KhILS4Z2tkTeSVtpK64aM3gJjC8t2iyNeXyQDQwAg/uQtieywD",
  render_errors: [view: GenderBiasSurveyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GenderBiasSurvey.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
