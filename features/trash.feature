
Feature: Trash

  So that I can send and receive messages
  As an activated and logged in user
  I want access to a messages UI
  and I want to compose messages
  and I want to follow my Inbox
  and I want to Reply
  and I want to pull messages from the Trash

  Scenario: Trash
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
    And I should see "Message sent"
    And I follow "hello to me"
    And I should see "Sent: hello to me"
    And I follow "Messages"
    And I follow "Inbox"
    And I should see "hello to me"
    And I follow "hello to me"
    And I should see "hello to me"
    And I should see "Reply"
    And I follow "Reply"
    And I should see "Compose"
    And I fill in "message_subject" with "A reply to hello to me"    
    And I fill in "message_body" with "Hello Bob. I will keep this reply very short. Goodbye."
    And I press "Send"
    And I should see "Message sent"
    And I follow "Messages"
    And I follow "Inbox"
    And I should see "hello to me"
    And I follow "hello to me"
    And I should see "hello to me"
    And I should see "Delete"
    And I follow "Delete"
    And I should see "Inbox"
    And I follow "Messages"
    And I follow "Trash"
    And I follow "hello to me"
    And I should see "hello to me"
    And I should see "Undelete"
    And I follow "Undelete"
    And I should see "Inbox"
    And I should see "hello to me"
    And I follow "hello to me"
    And debug
    Then I should see "hello to me"

