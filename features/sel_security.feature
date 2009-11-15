# sel_security.feature

Feature: Login security

  So that I may feel secure
  I want to prevent viewing of twitter data to users not logged in

  Scenario: Login security

    Given I am on the "the homepage"
    And I should see "not_logged_in"
    And I should see "Welcome"
    And I should not see "My Twitter"
    When I go to "my twitter accounts page"
    Then I should see "Please Login"
    And I should see "not_logged_in"
    And I should see "Welcome"
    And I should be on "the homepage"
