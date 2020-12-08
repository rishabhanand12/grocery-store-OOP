require_relative "item"

class Cart
  @attr_reader :cart

  def initialize list
    @order_list = list.tally
    @cart = []
  end

  def add_to_cart
    @order_list.each do |item,qty|
      cart << Item.new(item, qty)
    end
  end
end