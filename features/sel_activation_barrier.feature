# activation_barrier.feature

Feature: Activation Barrier

  So that I can use a performant site unclogged with robot created users
  As a general user
  After I register
  I want to encounter a login barrier
  Which is removed after I select the appropriate activation link

  Scenario: Activation Barrier

    Given that I have just created an account
    When I try to login to that account
    And I have not activated it yet
    Then I should see "Your account is not active"
