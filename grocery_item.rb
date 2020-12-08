class GroceryItem 
  attr_reader :item, :unit_price, :sale_price, :sale_eligible_qty
  def initialize(item, unit_price, sale_price = 0, sale_eligible_qty = 0) 
    @item = item
    @unit_price = unit_price
    @sale_price = price
    @sale_eligible_qty = sale_eligible_qty
  end
end