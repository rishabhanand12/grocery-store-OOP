require_relative "cart"
require_relative "bill"

class Counter 
  def initialize
	@order_list = []
	@cart = []
	@bill = nil
  end

  def takeOrder
    puts "Enter the list of grocery items seperated by a comma"
    list = gets.chomp.downcase.gsub(/\s+/, '').split(',')
    @order_list = list
  end

  def generate_cart
	@cart = Cart.new @order_list
  end  

  def generate_bill
	@bill != Bill.new @new_cart 
	@bill.create_table
	puts "\n Total Amount: $#{@bill.total_amt.round(2)}"
	puts "\n You saved $#{@bill.saved_amt}"
  end
end