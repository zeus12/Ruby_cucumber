Feature: Adopting puppies

  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

Background:
  Given I am on the puppy adoption site


  Scenario: Checking cart with puppies
  When I click the Adopt ME button
    Then I should see puppie name
    And I check "Collar and Leash" checkbox
    And I check "Chew toy" checkbox
    And I check "Travel carrier" checkbox
    And I check "First Vet Visit" checkbox
  Then I should see 312.87 in total field

#  Scenario: Adopting one puppy
#    When I click View Details button 1
#    And I click the Adopt ME button
#    And I click Adopt Another Puppy
#    And I click View Details button 0
#    And I click the Adopt ME button
#    And I click the Complete the Adoption button
#    And I enter "name" in the name field
#    And I enter "address" in the address field
#    And I enter "email@gmail.com" in the email field
#    And I enter "Check" from the pay with dropdown
#    And I click the Place Order button
#    Then I should see "Thank you for adopting a puppy!"


#  Scenario Outline: Adopting one puppy
#    When I click View Details button 1
#    And I click the Adopt ME button
#    And I click Adopt Another Puppy
#    And I click View Details button 0
#    And I click the Adopt ME button
#    And I click the Complete the Adoption button
#    And I enter "<name>" in the name field
#    And I enter "<address>" in the address field
#    And I enter "<email>" in the email field
#    And I enter "<pay_type>" from the pay with dropdown
#    And I click the Place Order button
#    Then I should see "Thank you for adopting a puppy!"
#
#    Examples:
#      | name  | address     | email         | pay_type       |
#      | Kitty | limoja 35   | kitty@foo.com | Check          |
#      | Benny | neman 23    | benny@foo.com | Credit card    |
#      | John  | 234 Leading | john@foo.com  | Purchase order |