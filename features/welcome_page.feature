Feature: Welcome Page

  So that I can feel welcome
  As a general user
  I want to see a welcome page with 2 columns

  Scenario: Show the welcome page to a general user
    Given the server is up
    And I am not logged in
    When I go to the homepage
    Then I should see a page with 2 columns
    And the LHS column should be relatively narrow
    And the RHS column should be much more prominent
    And the LHS column should have the links: login, register
    And the RHS should only contain the word Welcome
