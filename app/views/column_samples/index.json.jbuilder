json.array!(@column_samples) do |column_sample|
  json.extract! column_sample, :c1, :c2, :c3
  json.url column_sample_url(column_sample, format: :json)
end