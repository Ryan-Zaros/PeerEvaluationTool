class CreateEvaluationScores < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluation_scores do |t|
      t.references :evaluation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :comment
      t.integer :score

      t.timestamps
    end
  end
end
