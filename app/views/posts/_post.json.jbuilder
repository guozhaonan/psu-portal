json.extract! post, :id, :title, :tagline, :url, :description, :featured, :created_at, :updated_at
json.url post_url(post, format: :json)
