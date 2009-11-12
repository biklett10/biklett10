# compose.feature

Feature: See Compose UI

  So that I can send and receive messages
  As an activated and logged in user
  I want access to a messages UI

  Scenario: See Compose UI

    Given I am on the homepage
    When I register "bobsmith"
    And I activate "bobsmith"
    And I login "bobsmith" with "r1chbr0wn"
    And I follow "Messages"
    When I follow "Compose"
    Then I should see "Compose"
    And I should see "To:"
    And I should see "Subject:"
    And I should see "Body:"

