# frozen_string_literal: true

Given(/^I tap on search tab$/) do
  @home = Home.new
  wait_for { @home.searchTab.displayed? }
  @home.searchTab.click
end

When(/^I tap on search box$/) do
  @search = Search.new
  @search.searchBox.click
end

When(/^I tap on the first popular search suggestion$/) do
  @search = Search.new
  @search.popularSearchList.popularItens[0].click
end

And(/^I tap on the first wine list result$/) do
  @search = Search.new
  @search.firstWine.click
end

And(/^the wine page opens successfully$/) do
  @wine = Wine.new
  expect(@wine.wineImage.Displayed).to eq('true')
end

When(/^I slide to rate it$/) do
  @wine = Wine.new
  slide_to_rate(@wine.unratedButton)
end

When(/^I tap on Done on confirmation pop\-up$/) do
  @wine = Wine.new
  @wine.doneButton.click
  @wine.closeButton.click
end

When(/^I add it to a Wishlist$/) do
  @wine = Wine.new
  wait_for { @wine.soldBuyText.displayed? }
  @wine.wishButton.click
end

Then(/^the wine was whishlisted$/) do
  @wine = Wine.new
  expect(@wine.wishButton.Checked).to eq('true')
end

When(/^I select a category type$/) do
  @search = Search.new
  wait_for  { @search.filterTabs.typeTab.Displayed }
  @search.filterTabs.typeTab.click
end

Then(/^I check that the rate has been given$/) do
  @wine = Wine.new
  expect(@wine.ratedButton.Displayed).to eq('true')
end

Then(/^the wine page show its content correctly$/) do
  @wine = Wine.new
  expect(@wine.wineImagePerfect.Displayed).to eq('true')
end

And(/^I scroll down$/) do
  @search = Search.new
  wait_for  { @search.categoriesList.categoriesItens[0].categoryText.Displayed }
  scroll_all_down
end

When(/^I select the first popular search for places for wine$/) do
  @search = Search.new
  @search.popularSearchPlace.popularSearchPlaceItem.click
end

Then(/^I can view popular wine places$/) do
  @search = Search.new
  @search.popularSearchPlace.popularSearchPlaceItem.each do |place|
    expect(place.Displayed).to eq('true')
  end
end

And(/^I tap on type tab$/) do
  @search = Search.new
  @search.filterTabs.typeTab.click
end

And(/^I click on first category$/) do
  @search = Search.new
  @search.categoriesList.categoriesItens[0].categoryText.click
end

Then(/^All Pairings option is displayed$/) do
  @search = Search.new
  expect(@search.categoriesList.categoriesItens[0].Displayed).to eq('true')
end
