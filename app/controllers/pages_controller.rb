# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @groups = if current_user
                current_user.groups
              else
                []
              end
  end
end
