# twitter_following.feature

Feature: See Who I Follow On Twitter

  So that I can see who I follow on twitter
  As an activated and logged in user
  I want to see a list of who I follow on twitter

  Scenario: See Who I Follow On Twitter

    Given I register and activate "richbrown" with "b0bsm1th"
    And I login as "richbrown" with password "b0bsm1th"
    And as "richbrown" I own twitter accounts "janis_cowgirl88 billx_thepilot87 eugene_dentist86"
    And I follow "My Twitter Accounts"
    And I follow "eugene_dentist86"
#    And I follow "I Am Following"
#    Then I should see "alyankovic"
#    And I should see "janis_cowgirl88"


