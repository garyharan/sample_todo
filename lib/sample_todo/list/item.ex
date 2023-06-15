defmodule SampleTodo.List.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :body, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:body])
    |> validate_required([:body])
  end
end
