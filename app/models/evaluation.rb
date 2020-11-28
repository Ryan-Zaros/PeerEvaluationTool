class Evaluation < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :assignment
end
