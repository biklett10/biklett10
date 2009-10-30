Feature: Registration

  So that I can use the site
  As a general user
  I want to register

  Scenario: Registration

    Given I am not logged in
    When I go to the register page
    And I fill in login with bobsmith
    And I fill in email with bobsmith@hotmail.com
    And I press Submit 
    Then I should see "Check your email for activation instructions."
