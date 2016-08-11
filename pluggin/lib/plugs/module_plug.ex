defmodule Pluggin.ModulePlug do
  import Plug.Conn

  def start_link do
   {:ok, _pid} = Plug.Adapters.Cowboy.http(Pluggin.ModulePlug, [], port: 4000)
  end

  def init(options), do: options
  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Oh Hi!")
  end
end
