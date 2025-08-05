defmodule CurrentTime do
  import Plug.Conn

  def init(options), do: options

  def call(connection, _opts) do
    connection
    |> put_resp_content_type("text/html")
    |> send_resp(200, "Hello World! The time is #{Time.to_string(Time.utc_now())}")
  end
end
