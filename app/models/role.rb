# frozen_string_literal: true

class Role < ApplicationRecord
  has_many :users, :dependent => :destroy
  accepts_nested_attributes_for :users, allow_destroy: true
end
