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
  @browser.button(:value => 'Adopt Another Puppy').click
end

And(/^I click Adopt Another Puppy$/) do
  @browser.button(:value => 'Adopt Another Puppy').click
end

And(/^I click the Complete the Adoption button$/) do
  @browser.button(:value => 'Complete the Adoption').click
end


And(/^I enter "(.*?)" in the name field$/) do |name|
  @browser.text_field(:name => 'order[name]').send_keys(name)
end


And(/^I enter "(.*?)" in the address field$/) do |address|
  @browser.textarea(:name => 'order[address]').send_keys(address)
end


And(/^I enter "([^\"]*)" in the email field$/) do |email|
  @browser.text_field(:name => 'order[email]').set(email)
end


And(/^I enter "([^\"]*)" from the pay with dropdown$/) do |pay_type|
  @browser.select_list(:id => 'order_pay_type').select(pay_type)
end


And(/^I click the Place Order button$/) do
  @browser.button(:value => 'Place Order').click
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



