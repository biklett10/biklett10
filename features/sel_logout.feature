# sel_logout.feature

Feature: See that I am logged out

  So that I can determine my login status
  I want to authenticate as bobsmith on our-site
  and see a message on the LHS showing that I am logged in

  Scenario: See that I am logged out

    Given I am now "bobsmith"
    And I am on the "the homepage"
    And saop
    And I follow "Login"
    And I fill in "Login" wih "bobsmith"
    And I fill in "Password" wih "r1chbr0wn"
    And I press "Login"
    And I should see "bobsmith"
    And I should see "Login successful"
    And saop
    And I follow "Logout"
    Then I should see "not_logged_in"
    And I should see "Logout successful"
    And debug

