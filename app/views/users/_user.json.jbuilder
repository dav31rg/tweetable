json.extract! user, :id, :username, :name, :email, :password, :avatar, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
