json.array!(@images) do |image|
  json.extract! image, :id, :cover
  json.url image_url(image, format: :json)
end
