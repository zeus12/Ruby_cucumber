class HomePage
  include PageObject

  # button(:first_puppy, :value => 'View Details', :index=> 0)
  # button(:second_puppy, :value => 'View Details', :index=> 1)

  
  #Clicks on view details button
  #@param - index number of the button
  def select_puppy_number(num)
    button_element(:value => 'View Details', :index=> num).click
  end

end