defmodule Pluggin do
  use Application
  import Plug.Conn

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Pluggin.ModulePlug, []),
      worker(Pluggin.MyRouter, []),
      #worker(Pluggin.Whoami, [])
    ]

    opts = [strategy: :one_for_one, name: Pluggin.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
