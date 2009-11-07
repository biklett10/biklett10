# features/see_my_twitter_accounts.feature

Feature: See My Twitter Accounts

  So that I can see my twitter accounts
  As an activated and logged in user
  I want to see a list of my twitter accounts

  Scenario: See My Twitter Accounts

    Given I register and activate "richbrown" with "b0bsm1th"
    And I login as "richbrown" with password "b0bsm1th"
    And as "richbrown" I own twitter accounts "janis_cowgirl88 billx_thepilot87 eugene_dentist86"
    When I follow "My Twitter Accounts"
    And You inspect the currently loaded page
    Then I should see "janis_cowgirl88"
    And I should see "billx_thepilot87"
    And I should see "eugene_dentist86"
