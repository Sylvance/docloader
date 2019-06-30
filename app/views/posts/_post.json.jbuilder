# json.extract! post, :id, :user_id, :title, :description, :post, :created_at, :updated_at
json.extract! post, :id, :title, :description, :post, :created_at, :updated_at
json.url post_url(post, format: :json)
