#defmodule Plug.Auth do
#  import Plug.Conn

  #def init(opts) do
  #  %{simple: Keyword.get(opts, :simple, "")}
  #end

  #def call(conn, _opts) do
  #  conn
  #  |> get_auth_header()
  #  |> verify_creds()
  #end

#  def get_auth_header do
#    authorization = get_req_header(conn, "authorization")
#    {conn, authorization}
#  end

  #def verify_creds((conn, << "Basic ", creds::binary >> )) do
  #  if creds == Basic.encode("leonardo") do
  #    {conn, creds}
  #  else
  #    {conn, nil}
  #  end
  #end

#end
