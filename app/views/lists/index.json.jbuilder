json.array!(@lists) do |list|
  json.extract! list, :id, :store, :description
  json.url list_url(list, format: :json)
end
