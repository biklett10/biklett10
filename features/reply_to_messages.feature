# reply_to_messages.feature

Feature: Reply to Messages

  So that I can reply to messages
  As an activated and logged in user
  I want to reply to a message sent by another user

  Scenario: Reply to Messages

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
    And I should see "minute"
    And I follow "Hello Bob"
    And I follow "Reply"
    And I should see "Compose"
    And I should see "To:"
    And I should see "bobsmith"
    And I should see "richbrown"
    And I should see "Subject:"
    And I should see "Body:"
    And I check "bobsmith"
    And I check "richbrown"
    And I fill in "message_subject" with "Hello Bob. This is a reply."
    And I fill in "message_body" with "Now? Now I am playing checkers with Rich."
    And I press "Send"
    Then I should see "Message sent"
    And I should see "Sent Messages"
    And I should see "Hello Bob. This is a reply."
    And I should see "less than a minute ago"

