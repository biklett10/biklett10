Feature: Associate User and his Twitter Accounts

  In order to better manage my twitter accounts
  I want to associate my RoR account with my twitter accounts

  Scenario: Associate b1ll_cl1nton and t10_b1ll_cl1nton
    Given that I am logged into RoR account as b1ll_cl1nton
    And I have a twitter account named t10_b1ll_cl1nton
    When I add t10_b1ll_cl1nton to b1ll_cl1nton
    Then I can see that b1ll_cl1nton can see information about t10_b1ll_cl1nton

