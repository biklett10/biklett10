# sel_login.feature

Feature: See that I am logged in

  So that I can determine my login status
  I want to authenticate as bobsmith on our-site
  and see a message on the LHS showing that I am logged in

  Scenario: See that I am logged in

    Given I am now "bobsmith"
    And I am on the "the homepage"
    And I follow "Login"
    And I fill in "Login" wih "bobsmith"
    And I fill in "Password" wih "r1chbr0wn"
    When I press "Login"
    Then I should see "bobsmith"
    Then I should see "Login successful"
    And debug

