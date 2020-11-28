json.extract! evaluation_score, :id, :evaluation_id, :user_id, :comment, :score, :created_at, :updated_at
json.url evaluation_score_url(evaluation_score, format: :json)
