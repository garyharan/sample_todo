defmodule SampleTodoWeb.Schema do
  use Absinthe.Schema

  alias SampleTodoWeb.ItemResolver

  object :item do
    field :body, non_null(:string)
  end

  query do
    @desc "Get all the items"
    field :all_items, non_null(list_of(non_null(:item))) do
      resolve(&ItemResolver.all_items/3)
    end
  end

  mutation do
    @desc "Create a new item"
    field :create_item, :item do
      arg :body, non_null(:string)

      resolve &ItemResolver.create_item/3
    end
  end
end
