Given(/^I am on the puppy adoption site$/) do
  visit(HomePage)
end



When(/^I click View Details button for "(.*?)"$/) do |name|
  on(HomePage).select_puppy_number(name)
end


And(/^I click the Adopt ME button$/) do
  on(DetailsPage).add_to_cart
end

And (/^I click Adopt Another puppy button$/) do
  on(ShoppingCartPage).continue_shopping
end


And(/^I click the Complete the Adoption button$/) do
 on(ShoppingCartPage).proceed_to_checkout
end


And(/^I enter "(.*?)" in the name field$/) do |name|
  on(CheckoutPage).name=(name)
end


And(/^I enter "(.*?)" in the address field$/) do |address|
  on(CheckoutPage).address=(address)
end


And(/^I enter "([^\"]*)" in the email field$/) do |email|
  on(CheckoutPage).email=(email)
end


And(/^I enter "([^\"]*)" from the pay with dropdown$/) do |pay_type|
  on(CheckoutPage).pay_type=(pay_type)
end


And(/^I click the Place Order button$/) do
  on(CheckoutPage).place_order
end


Then(/^I should see "([^\"]*)"$/) do |expected|
  expect(@current_page.text).to include expected
end

Then(/^I should see "([^\"]*)" as the name for (line item \d+)$/) do |name, line_item|
  expect(on(ShoppingCartPage).name_for_line_item(line_item)).to include name
end

  When(/^I should see "([^\"]*)" as the subtotal for (line item \d+)$/) do |subtotal, line_item|
  expect(on(ShoppingCartPage).subtotal_for_line_item(line_item)).to eql subtotal
end

When(/^I should see "([^\"]*)" as the cart_total$/) do |total|
  expect(on(ShoppingCartPage).cart_total).to eql total
end



