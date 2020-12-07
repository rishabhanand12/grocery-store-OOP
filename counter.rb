class Counter 
	def takeOrder
		puts "Enter the list of grocery items seperated by a comma"
		order_list = gets.chomp.downcase.gsub(/\s+/, '').split(',')
	end
end