class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.integer :authorUserId
      t.integer :teamId
      t.text :comment
      t.integer :assignmentId

      t.timestamps
    end
  end
end
