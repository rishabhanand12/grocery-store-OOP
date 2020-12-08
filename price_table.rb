require_relative "grocery_item"

module PriceTable
  Price_list = {
    "milk" => GroceryItem.new("milk",8.97,5,2),
    "bread" => GroceryItem.new("bread",2.17,6,3),
    "apple" => GroceryItem.new("apple",0.89),
    "banana" => GroceryItem.new("banana",0.99)
  }
end