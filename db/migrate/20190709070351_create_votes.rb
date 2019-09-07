class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :user_id, null: false
      t.integer :question_id, null: false
      t.integer :ballot, null: false

      t.timestamps

      t.index :user_id
      t.index :question_id
      t.index [:user_id, :question_id], unique: true
    end
  end
end
