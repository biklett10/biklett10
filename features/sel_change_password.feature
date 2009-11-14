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
    And I follow "New twitter account"








    
