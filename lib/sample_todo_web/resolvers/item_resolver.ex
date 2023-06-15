defmodule SampleTodoWeb.ItemResolver do
  alias SampleTodo.List

  def all_items(_root, _args, _info) do
    {:ok, List.list_items()}
  end

  def create_item(_root, args, _info) do
    case List.create_item(args) do
      { :ok, item } -> { :ok, item }
      _error        -> {:error, "could not create item"}
    end
  end
end
