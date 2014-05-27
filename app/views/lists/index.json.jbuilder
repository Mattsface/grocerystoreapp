json.array!(@lists) do |list|
  json.extract! list, :id, :store, :description, :number_of_items, :price, :user_id
  json.url list_url(list, format: :json)
end
