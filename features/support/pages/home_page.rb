class HomePage
  include PageObject

  page_url "http://puppies.herokuapp.com"

  divs(:name, :class => 'name')
  buttons(:view_detail, :value => 'View Details')

  #Clicks on view details button
  #@param - index number of the button
  def select_puppy_number(name)
    index = index_for(name)
    view_detail_elements[index].click
    #self.button_element(:value => 'View Details', :index=> num-1).click
  end

  def index_for(name)
    name_elements.find_index {|the_div| the_div.text == name}
  end

  private :index_for

end