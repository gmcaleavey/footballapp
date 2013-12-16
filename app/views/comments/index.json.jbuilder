json.array!(@comments) do |comment|
  json.extract! comment, :commenter, :body, :result_id
  json.url comment_url(comment, format: :json)
end
