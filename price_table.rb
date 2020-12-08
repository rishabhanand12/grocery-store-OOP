require_relative "grocery_item"

module PriceTable
  price_list = {
    "milk" => GroceryItem.new(8.97,5,2),
    "bread" => GroceryItem.new(2.17,6,3),
    "apple" => GroceryItem.new(0.89),
    "banana" => GroceryItem.new(0.99)
  }
end