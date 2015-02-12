Given(/^I am on the puppy adoption site$/) do
  @browser.goto 'http://puppies.herokuapp.com/'
end


When(/^I click the View Details button$/) do
  @browser.button(:value => 'View Details').click
end


And(/^I click the Adopt ME button$/) do
  @browser.button(:value => 'Adopt Me!').click
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


And(/^I enter "(.*?)" in the email field$/) do |email|
  @browser.text_field(:name => 'order[email]').set(email)
end


And(/^I enter "(.*?)" from the pay with dropdown$/) do |pay_type|
  @browser.select_list(:id => 'order_pay_type').select(pay_type)
end


And(/^I click the Place Order button$/) do
  @browser.button(:value => 'Place Order').click
end


Then(/^I should see "(.*?)"$/) do |text|
  fail 'Browser text didn\'t match expected value '  unless @browser.text.include? text
end