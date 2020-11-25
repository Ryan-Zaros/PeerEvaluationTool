class Evaluation < ApplicationRecord

        belongs_to :user
        belongs_to :group
        belongs_to :assignment
        has_many :evaluation_scores
end
