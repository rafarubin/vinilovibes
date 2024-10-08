class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :category
      t.string :artist
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
