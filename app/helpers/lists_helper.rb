module ListsHelper

	def find_number_of_items
		@item_list = Item.where list_id: @list.id
		@total = 0

		@item_list.each do |x|
			@total += x.qty
		end

		return @total
	end


	def find_total_price
		@item_list = Item.where list_id: @list.id
		@price_total = 0
		
		@item_list.each do |x|
			@total += x.price
		end

		return @total
	end

end
