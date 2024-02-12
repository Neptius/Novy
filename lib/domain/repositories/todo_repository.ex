defmodule Novy.Domain.Repositories.ITodoRepository do
  alias Novy.Domain.Models.Todo

  @callback one(Integer.t()) :: {:ok, Todo.t()} | {:error, any}
  @callback all() :: [Todo.t()] | {:error, any}
  @callback create(Todo.t()) :: {:ok, Todo.t()} | {:error, any}
end
