class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions, id: :integer do |t|
      t.string :title, null: false
      t.text :text, null:false
      t.string :word1, null: false
      t.string :word2, null: false
      t.string :word3
      t.string :word4
      t.string :word5
      t.references :user, foreign_key: true, type: :integer
      t.references :category, foreign_key: true, type: :integer
      t.timestamps
    end
  end
end
