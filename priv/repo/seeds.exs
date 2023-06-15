# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     SampleTodo.Repo.insert!(%SampleTodo.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

SampleTodo.Repo.insert!(%SampleTodo.List.Item{body: "Check this item"})
SampleTodo.Repo.insert!(%SampleTodo.List.Item{body: "Sample Item"})
SampleTodo.Repo.insert!(%SampleTodo.List.Item{body: "Third item ever"})
