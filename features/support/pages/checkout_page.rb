class CheckoutPage
  include PageObject

  text_field(:name, :id => 'order[name]')
  text_field(:address, :id => 'order[address]')
  text_field(:email, :id => 'order[email]')
  select_list(:pay_type, :id => 'order_pay_type')
  button(:place_order, :value => 'Place Order')


  # def initialize(browser)
  #   @browser = browser
  # end
  #
  #
  #
  # ############## checkout values ##############
  #
  # def set_address(an_address)
  #   @browser.textarea(:name => 'order[address]').send_keys(an_address)
  # end
  #
  # def set_name(name)
  #   @browser.text_field(:name => 'order[name]').send_keys(name)
  # end
  #
  #
  # def set_email(email)
  #   @browser.text_field(:name => 'order[email]').set(email)
  # end
  #
  #
  # def choose_pay_type(pay_type)
  #   @browser.select_list(:id => 'order_pay_type').select(pay_type)
  # end
  #
  #
  # ############# buttons #############
  # def place_order
  #   @browser.button(:value => 'Place Order').click
  # end


end