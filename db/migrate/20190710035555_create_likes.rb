class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes, id: :integer do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :question_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
