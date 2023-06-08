@Cart
Feature: Open Popup Product

@Cart
Scenario: Open Page
Given I open wetwo
And I choose Toko
Then I see Product

@Cart
Scenario: Open Popup
Given I see Product
And I click Product
Then I see Popup

@Cart
Scenario: Scroll Popup
Given I see Popup
And I scroll Popup
And I add product
And I go to cart