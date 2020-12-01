# frozen_string_literal: true

class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.text :name

      t.timestamps
    end
  end
end
