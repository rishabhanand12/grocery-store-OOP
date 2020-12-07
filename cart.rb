class Cart
  def initialize order_list
    @cart = order_list.tally
  end
end