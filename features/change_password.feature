# features/change_password.feature

Feature: Change Password

  So that I can change my password
  As a general user
  I want to change my password after I activate my account

  Scenario:  Change Password

    Given I am on the homepage
    When I register "bobsmith"
    And I activate "bobsmith"
    And I login "bobsmith" with "r1chbr0wn"
    And I follow "Profile"
    And I follow "Change Password"
    And You inspect the currently loaded page
    And I fill in "cp_current_password" with "r1chbr0wn"
    And I fill in "user_password" with "he110w0rld"
    And I fill in "user_password_confirmation" with "he110w0rld"
    And I press "Change password"
    And I follow "Logout"
    And I follow "Login"
    And I login "bobsmith" with "he110w0rld"
    Then I should see "bobsmith"
    And I should see "Login successful"
    And I should see "Welcome"







    
