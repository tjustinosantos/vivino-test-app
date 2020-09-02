Feature: Wine search future
  As a Vivino app user
  I should be able to access the search page
  So I can successfully scroll down and check for popular wine places and browser by type
  @pageview
  Scenario: Wine browsering by type
    Given I tap on search tab
    And I tap on type tab
    And I click on first category
    Then the wine page show its content correctly

  @smoketest @pageview
  Scenario: Wine browsering by type
    Given I tap on search tab
    And I scroll down
    Then I can view popular wine places

