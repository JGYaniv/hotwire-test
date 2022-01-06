json.extract! post, :id, :body, :parent_id, :created_at, :updated_at
json.url post_url(post, format: :json)
