json.extract! comment, :id, :photo_id, :body, :author_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
