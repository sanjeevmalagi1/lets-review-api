defmodule LetsReview.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      LetsReviewWeb.Telemetry,
      # Start the Ecto repository
      LetsReview.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: LetsReview.PubSub},
      # Start Finch
      {Finch, name: LetsReview.Finch},
      # Start the Endpoint (http/https)
      LetsReviewWeb.Endpoint
      # Start a worker by calling: LetsReview.Worker.start_link(arg)
      # {LetsReview.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LetsReview.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LetsReviewWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
