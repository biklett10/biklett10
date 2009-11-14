# sel_security.feature

Feature: Login security

  So that I may feel secure
  I want to prevent viewing of twitter data to users not logged in

  Scenario: Login security

    Given I am not logged in
    And  I am on the "the homepage"
    When I follow "My Twitter Accounts"
    Then I should see "Please Login"
    And I should be on "the homepage"
