json.array!(@joinhas) do |joinha|
  json.extract! joinha, :id, :name, :description, :photo, :upload_date
  json.url joinha_url(joinha, format: :json)
end
