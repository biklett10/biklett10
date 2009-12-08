Feature: Registration
  In order to get my personal account
  As a anonymous user
  I want be able to register
  So that I can be a member of the community

  Scenario: Display registration form to anonymous user
    Given I am "ashokcingla4455@yahoo.com" an anonymous user
    When I go to the homepage
    And I should see "Register"
    And I follow "Register"
    And I should see "Your Yahoo E-mail:"
    And I should see a "form" named "new_user" with 1 "input" named "user_email"
    And I should see a "form" named "new_user" with 1 "input" named "user_submit"
    And I fill in "user_email" with "ashokcingla4455@yahoo.com"
    And debug
    And I press "user_submit"
    Then I should get redirected away
    And debug
