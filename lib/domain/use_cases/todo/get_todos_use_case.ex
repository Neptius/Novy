defmodule Novy.Domain.UseCases.Todo.GetTodosUseCase do
  @moduledoc false

  alias Novy.Data.Repositories.TodoRepository

  def execute do
    case TodoRepository.all() do
      {:ok, todos} -> {:ok, todos}
      {:error, reason} -> {:error, reason}
    end
  end
end
