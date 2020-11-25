class CreateEvaluationScores < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluation_scores do |t|
      t.integer :evaluationId
      t.integer :recipientUserId
      t.text :comment
      t.integer :score

      t.timestamps
    end
  end
end
