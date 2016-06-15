json.array!(@fathers) do |father|
  json.extract! father, :id, :name
  json.url father_url(father, format: :json)
end
