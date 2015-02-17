class ShoppingCartPage
  include PageObject

  NAME_COLUMN = 1
  SUBTOTAL_COLUMN = 3
  LINES_PER_PUPPY = 6

  button(:proceed_to_checkout, :value => 'Complete the Adoption')
  button(:continue_shopping, :value => 'Adopt Another Puppy')
  table(:cart, :class => 'total_cell')




  ############## work with table #############
  #The name of the puppy
  def name_for_line_item(line_item)
    cart_line_item(line_item)[NAME_COLUMN].text
  end

  def subtotal_for_line_item(line_item)
    cart_line_item(line_item)[SUBTOTAL_COLUMN].text
  end

  def cart_total
    @browser.td(:class => 'total_cell').text
  end

  def table_value(lineitem, column)
    row = (lineitem.to_i -1) * LINES_PER_PUPPY
    cart_element[row][column].text
  end


   private :table_value

end