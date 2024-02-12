defmodule Novy.Data.Entities.TodoEntity do
  @moduledoc false

  @enforce_keys [:id, :title, :completed]

  defstruct [:id, :title, :completed]
end
