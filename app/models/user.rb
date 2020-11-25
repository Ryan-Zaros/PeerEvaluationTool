class User < ApplicationRecord
    has_many :groups, :through => :user_groups
	has_many :assignments
	has_many :evaluations
	has_many :evaluation_scores
	belongs_to :role
end
