# frozen_string_literal: true

class AddRoleIdToDeviseUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :role, null: false, foreign_key: true
  end
end
