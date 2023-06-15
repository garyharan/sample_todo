defmodule SampleTodo.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :body, :string

      timestamps()
    end
  end
end
