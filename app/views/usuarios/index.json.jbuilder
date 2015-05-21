json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :codUsu, :nombreUsu
  json.url usuario_url(usuario, format: :json)
end
