require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ListsHelper. For example:
#
# describe ListsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe ListsHelper do

  before do 
  	@list = List.create(store: "Fred Meyers", user_id: 1, id: 1)
  	@item1 = Item.create(name: "Apple", price: 1, qty: 2, list_id: 1)
  	@item2 = Item.create(name: "Orange", price: 2, qty: 1, list_id: 1)
  end

  describe :find_number_of_items do
  	it "return the correct number of items in a list" do
      find_number_of_items(@list).should eq 3 
  	end
  end

  describe :find_total_price do
  	it "should return the total price of ALL the items in a list" do
  	  find_total_price(@list).should eq 4
  	end
  end

end
