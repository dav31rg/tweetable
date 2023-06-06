json.extract! tweet, :id, :body, :replies_count, :likes_count, :user_id, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
