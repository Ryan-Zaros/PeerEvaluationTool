# frozen_string_literal: true

class Evaluation < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :assignment
  has_many :evaluation_scores

  accepts_nested_attributes_for :evaluation_scores
end
