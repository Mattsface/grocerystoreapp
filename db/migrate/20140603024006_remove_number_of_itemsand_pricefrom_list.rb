class RemoveNumberOfItemsandPricefromList < ActiveRecord::Migration
  def change
  	remove_column :lists, :number_of_items
  	remove_column :lists, :price
  end
end
