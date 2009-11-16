# send_message.feature

Feature: Send Message

  So that I can send messages
  As an activated and logged in user
  I want to send a message

  Scenario: Send Message

    Given I am on the homepage
    When I register "bobsmith"
    And I activate "bobsmith"
    And I login "bobsmith" with "r1chbr0wn"
    And I follow "Messages"
    And I follow "Compose"
    And I check "message_to_"
    And I fill in "message_subject" with "Hello Bob"
    And I fill in "message_body" with "Hello Bob, what are you doing now?"
    And I press "Send"
    Then I should see "Message sent"
    And I should see "Sent Messages"
    And I should see "less than a minute ago"
    And saop



