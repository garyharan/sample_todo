defmodule SampleTodo.ListFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `SampleTodo.List` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        body: "some body"
      })
      |> SampleTodo.List.create_item()

    item
  end
end
