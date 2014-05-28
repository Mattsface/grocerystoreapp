class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.text :description
      t.integer :qty
      t.references :list, index: true

      t.timestamps
    end
  end
end
