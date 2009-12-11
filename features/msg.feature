
Feature: See Messages UI

  So that I can send and receive messages
  As an activated and logged in user
  I want access to a messages UI

  Scenario: See Messages UI
    Given I am logged in as bobsmith
    And I am on the homepage
    When I follow "Messages"
    Then I should see "Compose"
    And  I should see "Mailboxes"
    And  I should see "Inbox"
    And  I should see "Sent"
    And  I should see "Trash"
 
