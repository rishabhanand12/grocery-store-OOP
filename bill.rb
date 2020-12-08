require_relative "price_table"
require_relative "table"

class Bill 
  attr_reader :total_amt, :saved_amt
  include Table

  def initialize cart
    @cart = cart
    @total_amt = calculate_total_amt
    @saved_amt = calculate_saved_amt
  end

  def calculate_total_amt 
    total = 0
    @cart.each do |grocey_item|
      total += grocey_item.amount
    end
    return total
  end

  def calculate_saved_amt 
    total = 0
    price_list = PriceTable::Price_list
    @cart.each do |grocery_item| 
      total += grocey_item.qty * price_list[grocery_item.item].unit_price
    end
    return total - @total_amt
  end
end
