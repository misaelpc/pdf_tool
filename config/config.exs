# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :pdf_tool,
  ecto_repos: [PdfTool.Repo]

config :pdf_tool_web,
  ecto_repos: [PdfTool.Repo],
  generators: [context_app: :pdf_tool]

# Configures the endpoint
config :pdf_tool_web, PdfToolWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yRg3iLsHGe0vUQ9Rhz5aUlfr7f7etNm329wZ7F/fxaumzcF47YC680r4rte646p1",
  render_errors: [view: PdfToolWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PdfToolWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
