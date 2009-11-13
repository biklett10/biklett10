# sel_see_alyankovic.feature

Feature: See alyankovic

  So that I can see details about alyankovic on both twitter and google
  I want to authenticate as bobsmith on our-site
  and authenticate as eugene_dentist8 via twitter API
  and then see details about alyankovic on both twitter and google

  Scenario: See alyankovic

    Given I am now "bobsmith"
    And I "bobsmith" own twitter accounts
    And I am on the "the homepage"
    And I follow "Login"
    And I fill in "Login" wih "bobsmith"
    And I fill in "Password" wih "r1chbr0wn"
    And I press "Login"
    And I follow "My Twitter Accounts"
    And I follow "eugene_dentist8"
    When I follow "These Twitter Accounts"
    And saop
    And debug
    Then I should see "alyankovic"
