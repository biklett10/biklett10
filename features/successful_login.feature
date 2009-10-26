# successful_login.feature
Feature: Successful login

  In order for me to better understand Authlogic
  I want to create successful Cucumber tests for Authlogic

  Scenario: successful login
    Given I am the registered user John Doe
    And I am on the login page
    When I login with valid credentials
    Then I should be on the account page
    And I should see "Login successful!"
