defmodule Spongeqr.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SpongeqrWeb.Telemetry,
      Spongeqr.Repo,
      {DNSCluster, query: Application.get_env(:spongeqr, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Spongeqr.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Spongeqr.Finch},
      # Start a worker by calling: Spongeqr.Worker.start_link(arg)
      # {Spongeqr.Worker, arg},
      # Start to serve requests, typically the last entry
      SpongeqrWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Spongeqr.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SpongeqrWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
