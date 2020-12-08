require_relative "price_table"

class Item 
  def initialize(item,qty) 
    @item = item
    @qty = qty
    @amount = calculate_item_amount
  end

  def calculate_item_amount
    price_list = PriceTable::price_list
    item_details = price_list[@item]
    if @qty >= item_details.sale_eligible_qty
      return ( (@qty/item_details.sale_eligible_qty) * item_details.sale_price )  +  ( (@qty%item_details.sale_eligible_qty) * item_details.unit_price )
    else
        @qty * item_details.unit_price
    end
  end
end

      

