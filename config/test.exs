use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :genderBiasSurvey, GenderBiasSurveyWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :genderBiasSurvey, GenderBiasSurvey.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "emilymorgado",
  password: "peoplecare",
  database: "genderbiassurvey_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
