# sel_see_timoreilly.feature

Feature: See timoreilly

  So that I can see details about timoreilly
  I want to authenticate as bobsmith on our-site
  and authenticate as eugene_dentist8 via twitter API
  and then see details about timoreilly

  Scenario: See timoreilly

    Given I am now "bobsmith"
    And I "bobsmith" own twitter accounts
    And I am on the "the homepage"
    And I should see "not_logged_in"
    And I follow "Login"
    And I fill in "Login" wih "bobsmith"
    And I fill in "Password" wih "r1chbr0wn"
    And I press "Login"
    And I should see "bobsmith"
    And I should see "Login successful"
    And I follow "My Twitter Accounts"
    And I follow "eugene_dentist8"
    And debug
    And I follow "These Twitter Accounts"
    And I should see "timoreilly"
    And I follow "Details of: timoreilly"
    Then I should see "Sebastopol"
    And debug
