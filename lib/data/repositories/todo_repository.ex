defmodule Novy.Data.Repositories.TodoRepository do
  @moduledoc false

  @behaviour Novy.Domain.Repositories.ITodoRepository

  alias Novy.Data.Entities.TodoEntity

  @todos [
    %TodoEntity{
      id: 1,
      title: "Learn Elixir",
      completed: false
    },
    %TodoEntity{
      id: 2,
      title: "Learn Phoenix",
      completed: false
    }
  ]

  @spec one(id :: integer) :: {:ok, TodoEntity.t()} | {:error, String.t()}
  def one(id) do
    todo = Enum.find(@todos, fn todo -> todo.id == id end)
    case todo do
      nil -> {:error, "Todo not found"}
      _ -> {:ok, todo}
    end
  end

  @spec all() :: {:ok, [TodoEntity.t()]} | {:error, String.t()}
  def all() do
    {:ok, @todos}
  end

  @spec create(todo :: TodoEntity.t()) :: {:ok, TodoEntity.t()} | {:error, String.t()}
  def create(todo) do
    {:ok, todo}
  end
end
