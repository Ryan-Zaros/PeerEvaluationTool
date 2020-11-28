class User < ApplicationRecord
  belongs_to :role
  has_many :evaluations
  has_many :evaluation_scores
  has_many :groups, through: :user_groups
end
