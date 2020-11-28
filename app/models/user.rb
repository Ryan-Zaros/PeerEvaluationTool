class User < ApplicationRecord
  belongs_to :role
  has_many :groups, through: :user_groups
end
