json.extract! comment, :id, :body, :user_id, :commentable_id, :main_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
