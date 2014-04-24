json.array!(@abouts) do |about|
  json.extract! about, :id, :description
  json.url about_url(about, format: :json)
end
