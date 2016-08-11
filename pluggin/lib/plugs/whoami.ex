defmodule Pluggin.Whoami do
  use Plug.Router
  import Plug.Conn

  #plug Pluggin.Auth, simple: "Simple option passing"

  plug :match
  plug :dispatch

  get "/my_name" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Leonardo")
  end

  get "/my_age" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, "{Age: 23}")
  end

  match _ do
    conn
    |> send_resp(404, "not found!")
  end
end
