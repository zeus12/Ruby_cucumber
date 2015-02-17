Given(/^I am on the puppy adoption site$/) do
  @browser.goto 'http://puppies.herokuapp.com/'
end



When(/^I click View Details button (\d+)$/) do |button_num|
  @browser.button(:value => 'View Details', :index=> button_num.to_i).click
end


And(/^I click the Adopt ME button$/) do
  @browser.button(:value => 'Adopt Me!').click
  @cart = ShoppingCartPage.new(@browser)
end

And (/^I click Adopt Another puppy button$/) do
  @cart.continue_shopping
end


And(/^I click the Complete the Adoption button$/) do
  @cart.proceed_to_checkout
  @checkout = CheckoutPage.new(@browser)
end


And(/^I enter "(.*?)" in the name field$/) do |name|
  @checkout.set_name(name)
end


And(/^I enter "(.*?)" in the address field$/) do |address|
  @checkout.set_address(address)
end


And(/^I enter "([^\"]*)" in the email field$/) do |email|
  @checkout.set_email(email)
end


And(/^I enter "([^\"]*)" from the pay with dropdown$/) do |pay_type|
  @checkout.choose_pay_type(pay_type)
end


And(/^I click the Place Order button$/) do
 @checkout.place_order
end


Then(/^I should see "([^\"]*)"$/) do |expected|
  #fail 'Browser text didn\'t match expected value '  unless @browser.text.include? text
  expect(@browser.text).to include expected
end

Then(/^I should see "([^\"]*)" as the name for line item (\d+)$/) do |name, line_item|
  expect(@cart.name_for_line_item(line_item.to_i)).to include name
end

  When(/^I should see "([^\"]*)" as the subtotal for line item (\d+)$/) do |subtotal, line_item|
  expect(@cart.subtotal_for_line_item(line_item.to_i)).to eql subtotal
end

When(/^I should see "([^\"]*)" as the cart_total$/) do |total|
  expect(@cart.cart_total).to eql total
end



