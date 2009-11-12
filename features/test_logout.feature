# features/logout.feature

Feature: Logout

  So that I can logout of my current session
  As a general user
  I want to logout of my current session

  Scenario:  Logout

    Given that I have an activated account
    And I follow "Login"
    And I fill in "Login" wih "bobsmith"
    And I fill in "Password" wih "r1chbr0wn"
    And I press "Login"
    Then I should see "Logout"
    And I follow "Logout"
    And I should not be logged in
