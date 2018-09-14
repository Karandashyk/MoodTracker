json.extract! mood, :id, :rate, :comment, :user_id, :created_at, :updated_at
json.url mood_url(mood, format: :json)
