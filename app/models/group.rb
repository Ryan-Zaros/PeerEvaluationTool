# frozen_string_literal: true

# :dependent => :delete_all
class Group < ApplicationRecord
  has_many :user_groups, dependent: :destroy
  has_many :users, through: :user_groups

  has_many :evaluations, dependent: :destroy
  accepts_nested_attributes_for :user_groups, allow_destroy: true
end
