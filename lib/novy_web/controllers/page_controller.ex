defmodule NovyWeb.PageController do
  use NovyWeb, :controller

  alias Novy.Domain.UseCases.Todo.GetTodosUseCase

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    todos = GetTodosUseCase.execute()
    # LOG
    IO.inspect(todos)
    render(conn, :home, layout: false, todos: todos)
  end
end
