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
		@total = 0

		item_list(@list).each do |x|
			@total += (x.price * x.qty)
		end

		return @total
	end

	def lists_total_price
		@lists = List.where(user_id:current_user.id)

		return "0.00" if @lists.nil?

		@lists_total = 0
		@lists.each do |x|
			@lists_total += find_total_price(x)
		end

		return @lists_total
	end

end
