defmodule Novy.Domain.UseCases.Todo.GetTodoUseCase do
  @moduledoc false

  alias Novy.Data.Repositories.TodoRepository

  def execute(id) do
    case TodoRepository.one(id) do
      {:ok, todo} -> {:ok, todo}
      {:error, reason} -> {:error, reason}
    end
  end
end
