json.array!(@parents) do |parent|
  json.extract! parent, :name
  json.url parent_url(parent, format: :json)
end