class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password
      t.integer :roleId

      t.timestamps
    end
  end
end
