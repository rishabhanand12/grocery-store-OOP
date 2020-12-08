require "terminal-table"

module Table
  def create_table 
    table_rows = []
    for grocery_item in @cart do
      table_rows << [grocery_item.item.capitalize(), grocery_item.qty, "$#{grocery_item.amount.round(2)}"]
    table = Terminal::Table.new
    table.title = 'Bill'
    table.headings = ['Item', 'Quantity', 'Price']
    table.rows = table_rows
    puts table
  end
end
