# receive_messages.feature

Feature: Receive Messages

  So that I can receive messages
  As an activated and logged in user
  I want to receive a message sent by another user

  Scenario: Send Messages

    Given I am on the homepage
    When I register "bobsmith"
    And I activate "bobsmith"
    And  I register "richbrown"
    And I activate "richbrown"
    And I login "bobsmith" with "r1chbr0wn"
    And I follow "Messages"
    And I follow "Compose"
    And I check "bobsmith"
    And I check "richbrown"
    And I fill in "message_subject" with "Hello Bob"
    And I fill in "message_body" with "Hello Bob, what are you doing now?"
    And I press "Send"
    And I should see "Message sent"
    And I should see "Sent Messages"
    And I should see "bobsmith and richbrown"
    And I should see "less than a minute ago"
    And I follow "Messages"
    And I follow "Inbox"
    And I should not see "Welcome"
    And I should see "Inbox"
    And I should see "From"
    And I should see "Subject"
    And I should see "Received"
    And I should see "Hello Bob"
    Then I should see "minute"




