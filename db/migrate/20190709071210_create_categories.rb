class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories, id: :integer do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
