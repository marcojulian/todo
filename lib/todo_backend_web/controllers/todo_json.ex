defmodule TodoBackendWeb.TodoJSON do
  alias TodoBackend.Todos.Projections.Todo

  @doc """
  Renders a list of todos.
  """
  def index(%{todos: todos}) do
    %{todos: for(todo <- todos, do: data(todo))}
  end

  @doc """
  Renders a single todo.
  """
  def show(%{todo: todo}) do
    %{todo: data(todo)}
  end

  def data(%Todo{} = todo) do
    %{
      uuid: todo.uuid,
      title: todo.title,
      completed: todo.completed,
      order: todo.order
    }
  end
end
