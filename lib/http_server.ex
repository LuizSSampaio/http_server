defmodule HttpServer do
  @moduledoc """
  Documentation for `HttpServer`.
  """

  use Application

  @doc false
  def start(_type, _args) do
    children = [
      {HttpServer.Adapter, [plug: CurrentTime, port: 8080]}
    ]

    opts = [strategy: :one_for_one, name: HttpServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
