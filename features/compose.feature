
Feature: Compose Messages

  So that I can send and receive messages
  As an activated and logged in user
  I want access to a messages UI
  And I want to compose messages

  Scenario: Compose Messages
    Given I am logged in as bobsmith
    And I am on the homepage
    And I follow "Messages"
    And I follow "Compose"
    And I should see "Compose"
    And I should see "To:"
    And I should see "bobsmith"
    And I should see "Subject:"
    And I should see "Body:"
    And I check "bobsmith"
    And I fill in "message_subject" with "hello to me"
    And I fill in "message_body" with "Hello Bob. I will keep this very short. Goodbye."
    And I press "Send"
    And debug
    Then I should see "Message sent"


 
