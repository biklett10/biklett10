Feature: Registration

  So that I can use the site
  As a general user
  I want to register

  Scenario: Registration

    Given I am not yet logged in
    When I go to the register page
    And I fill in a username
    And I fill in an e-mail address
    And I fill in a password
    And I press Submit 
    Then I should see a message asking me to check my e-mail for an activation link


