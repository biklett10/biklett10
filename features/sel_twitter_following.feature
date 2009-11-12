# sel_twitter_following.feature

Feature: See Who I Follow On Twitter

  So that I can see who I follow on twitter
  As an activated and logged in user
  I want to see a list of who I follow on twitter

  Scenario: See Who I Follow On Twitter
    Given Using selenium I register and activate "richbrown" with "b0bsm1th"
    And Using selenium I login as "richbrown" with password "b0bsm1th"
#    And as "richbrown" I own twitter accounts "janis_cowgirl88 billx_thepilot87 eugene_dentist8"
    And I follow "My Twitter Accounts"
    And I follow "New twitter_account"
    And I fill in "twitter_account_twitter_login" with "eugene_dentist8"
    And I fill in "twitter_account_twitter_pass" with "ph1llynyfl"
    And I press "Create"
    And I follow "My Twitter Accounts"
    And I follow "eugene_dentist8"
    And I follow "These Twitter Accounts"
    Then I should see "Troy_Aikman"
    And I should see "janis_cowgirl88"


