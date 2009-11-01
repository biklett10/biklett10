Feature: Registration

  So that I can use the site
  As a general user
  I want to register

  Scenario: Registration

    Given I am not logged in
    When I go to the register page
    And I fill in Email with x9b0bsm1th2009@hotmail.com
    And I fill in Login with bobsmith
    And I fill in Password with r1chbr0wn
    And I fill in Password confirmation with r1chbr0wn
    And I press Register
    Then I should see "Your account has been created. Please check your e-mail"
    And I should not be logged in yet
