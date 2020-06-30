defmodule Annotations.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    children = [
      worker(Annotations.CreateWorker, [:create_annotations]),
      # Starts a worker by calling: Annotations.Worker.start_link(arg)
      # {Annotations.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Annotations.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
