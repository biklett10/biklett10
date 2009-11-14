# sel_associate_current_user.feature

Feature: Associate current_user

  So that I can know that my data is secure
  when I save data such as a twitter account
  I want others to not see it
  And I do not want to see others data

  Scenario: Associate current_user

    Given I am on "the homepage"
    When I register "thubten" with "thubnine"
    And I activate "thubten"
    And I login "thubten" with "thubnine"
    And I follow "My Twitter Accounts"
    And I follow "New twitter_account"
    And I fill in "twitter_account_twitter_login" with "eugene_dentist8"
    And I fill in "twitter_account_twitter_pass" with "ph1llynyfl"
    And I press "Create"
    And I should see "TwitterAccount was successfully created"
    And I follow "My Twitter Accounts"
    And I follow "eugene_dentist8"
    And I follow "These Twitter Accounts"
    And I should see "Troy_Aikman"
    And I should see "janis_cowgirl88"
    And I follow "Logout"
    And I should see "Logout successful"
    And I register "dan" with "thubnine"
    And I activate "dan"
    And I login "dan" with "thubnine"
    And I should see "Login successful"
    And debug
    And I follow "My Twitter Accounts"
    Then I should not see "eugene_dentist8"
