json.extract! article, :id, :title, :body, :created_at, :update_at
json.url article_url(@article, format: :json)