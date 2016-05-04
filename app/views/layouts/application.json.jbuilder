json.array!(@posts) do |post|
  json.extract! post, :id, :name, :description
end