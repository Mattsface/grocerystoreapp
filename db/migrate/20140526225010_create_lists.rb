class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :store
      t.text :description
      t.integer :items
      t.float :price
      t.integer :user_id

      t.timestamps
    end
  end
end
