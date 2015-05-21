json.array!(@favoritos) do |favorito|
  json.extract! favorito, :id, :name, :url, :references
  json.url favorito_url(favorito, format: :json)
end
