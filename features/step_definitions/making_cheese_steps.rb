Given(/^I have no cheese$/) do
  puts  "I have no cheese"
end


When(/^I press the make cheese button$/) do
 puts  "Machine"
end

Then(/^I should have (\d+) piece of cheese$/) do |num_pieces|
 puts "Rejoice! We have #{num_pieces} pieces od cheese"
 end