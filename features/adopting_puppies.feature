

Feature: Adopting puppies

  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

  Background:
    Given I am on the puppy adoption site

  Scenario: Adopting one puppy
#    Given I am on the puppy adoption site
    When I click View Details button 2
    And I click the Adopt ME button
    And I click the Complete the Adoption button
    And I enter "Kitty" in the name field
    And I enter "test street" in the address field
    And I enter "kitty@foo.com" in the email field
    And I enter "Credit card" from the pay with dropdown
    And I click the Place Order button
#    Then I should see "Thank you for adopting a puppy!"



#  Scenario: Validate cart with two puppies
#    When I click View Details button 0
#    And I click the Adopt ME button
#    And I click Adopt Another puppy button
#    And I click View Details button 1
#    And I click the Adopt ME button
#    Then I should see "Brook" as the name for line item 1
#    And I should see "$34.95" as the subtotal for line item 1
#    And I should see "Hanna" as the name for line item 2
#    And I should see "$22.99" as the subtotal for line item 2
#    And I should see "$57.94" as the cart_total





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