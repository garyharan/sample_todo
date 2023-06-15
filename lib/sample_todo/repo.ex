defmodule SampleTodo.Repo do
  use Ecto.Repo,
    otp_app: :sample_todo,
    adapter: Ecto.Adapters.Postgres
end
