json.array!(@results) do |result|
  json.extract! result, :Teams, :Score
  json.url result_url(result, format: :json)
end
