# frozen_string_literal: true

json.array! @evaluation_scores, partial: 'evaluation_scores/evaluation_score', as: :evaluation_score
