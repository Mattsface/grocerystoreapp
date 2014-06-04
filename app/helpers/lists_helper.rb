module ListsHelper

	def item_list(list)
		@item_list = Item.where list_id: @list.id
	end



	def find_number_of_items(list)
		@list = list
		@total = 0

		item_list(@list).each do |x|
			@total += x.qty
		end

		return @total
	end


	def find_total_price(list)
		@list = list
		@price_total = 0

		item_list(@list).each do |x|
			@total += (x.price * x.qty)
		end

		return @total
	end


end
