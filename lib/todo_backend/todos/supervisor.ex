defmodule TodoBackend.Todos.Supervisor do
  use Supervisor

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg, name: __MODULE__)
  end

  def init(_arg) do
    Supervisor.init(
      [
        TodoBackend.Todos.Projectors.Todo
      ],
      strategy: :one_for_one
    )
  end
end
