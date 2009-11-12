# features/create_activation_instructions.feature
# Based on discussion in 3rd ed of AWDWR: Action Mailer

Feature: Create Activation Instructions

  So that I can activate my account
  As a general user
  I want to activate my account after I register

  Scenario:  Create Activation Instructions

    Given that I have just created an account
    Then I should see an activation link
    And I can use that link to activate
    And I should not be logged in yet
    And I go to the login page
    And I fill in "Login" with "bobsmith"
    And I fill in "Password" with "r1chbr0wn"
    And I check "Remember me"
    And I press "Login"
    And I should see "Login successful"
    And I should see "Welcome"
    And I should be logged in


    
