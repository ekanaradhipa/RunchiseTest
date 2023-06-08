@Cart
Feature: Main

@Cart
Scenario: Open Page
Given I open wetwo
And I choose Toko
Then I see Product

@Cart
Scenario: Add Item to Cart
Given I see Product
