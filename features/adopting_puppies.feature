Feature: Adopting puppies

  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

  Scenario: Adopting one puppy
    Given I am on the puppy adoption site
    When I click the View Details button
    And I click the Adopt ME button
    And I click the Complete the Adoption button
    And I enter "Cheezy" in the name field
    And I enter "test street" in the address field
    And I enter "kitty@foo.com" in the email field
    And I enter "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"