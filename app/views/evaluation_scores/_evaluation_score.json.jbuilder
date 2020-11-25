json.extract! evaluation_score, :id, :evaluationId, :recipientUserId, :comment, :score, :created_at, :updated_at
json.url evaluation_score_url(evaluation_score, format: :json)
