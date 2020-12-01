# frozen_string_literal: true

class Assignment < ApplicationRecord
    has_many :evaluations, :dependent => :destroy
end
