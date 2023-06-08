@Cart
Feature: Main

@Cart
Scenario: Open Page
Given I open wetwo
And I choose Toko
Then I see Product

@Cart
Scenario: Popup Product
Given I see Product
And I click Product
Then I see Popup