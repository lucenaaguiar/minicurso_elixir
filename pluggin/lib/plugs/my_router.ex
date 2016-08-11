defmodule Pluggin.MyRouter do
  use Plug.Router
  import Plug.Conn

  #plug Pluggin.Auth, simple: "Simple option passing"

  plug :match
  plug :dispatch

  def init(options), do: options

  def start_link() do
    {:ok, _pid} = Plug.Adapters.Cowboy.http(Pluggin.MyRouter, [], port: 4001)
  end

  forward "/user", to: Pluggin.Whoami

  get "/hello" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, Node.list)
  end

  get "/vish" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, "{a: 10}")
  end

  match _ do
    conn
    |> send_resp(404, "not found!")
  end
end
