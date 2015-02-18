class ShoppingCartPage
  include PageObject

  NAME_COLUMN = 1
  SUBTOTAL_COLUMN = 3
  LINES_PER_PUPPY = 6

  button(:proceed_to_checkout, :value => 'Complete the Adoption')
  button(:continue_shopping, :value => 'Adopt Another Puppy')
  table(:cart, :index => 0)
  cell(:cart_total, :class => 'total_cell')






  ############## work with table #############
  #The name of the puppy
  def name_for_line_item(line_item)
    table_value(line_item, NAME_COLUMN)
  end

  def subtotal_for_line_item(line_item)
    table_value(line_item, SUBTOTAL_COLUMN)
  end

  def table_value(line_item, column)
    row = (line_item-1) * LINES_PER_PUPPY
    cart_element[row][column].text
  end


   private :table_value

end