# frozen_string_literal: true

class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.text :comment
      t.references :assignment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
