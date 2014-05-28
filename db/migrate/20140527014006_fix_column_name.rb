class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :lists, :items, :number_of_items
  end
end
