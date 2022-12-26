defmodule Lsbissue.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Phoenix.PubSub, name: Lsbissue.PubSub},
      LsbissueWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Lsbissue.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LsbissueWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
