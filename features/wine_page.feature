Feature: Test features available on Wine Page
  As a Vivino app user
  I should be able to access a wine page
  So I can successfully check for wine price, add a rating and to my wishlist.

  Background: User gets to a wine page
    Given I tap on search tab
    And I tap on search box
    When I tap on the first popular search suggestion
    And I tap on the first wine list result

  @smoketest
  Scenario: Page loaded successfully with image and avg price successfully shown
    Then the wine page opens successfully

  @rating
  Scenario: Rating a wine successfully
    When I slide to rate it
    And I tap on Done on confirmation pop-up
    Then I check that the rate has been given

  @wishlist
  Scenario: Adding wine to a Wishlist
    When I add it to a Wishlist
    Then the wine was whishlisted
