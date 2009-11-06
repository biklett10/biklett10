# janis.feature

Feature: Look at Janis timeline

  So that I can see if twitter gem works
  I want to authenticate as janis
  and make a simple api call

  Scenario: Look at Janis timeline

    Given I am twitter account "janis_cowgirl88" with pass of "da11astxca"
    When I connect to twitter with "HTTPAuth"
    Then I should try "user_timeline"
    And I should try "verify_credentials"
