require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

require "test/unit/assertions"
include Test::Unit::Assertions

driver = Selenium::WebDriver.for:chrome

Given("I open wetwo") do

 driver.navigate.to "https://wetwo.id/"
 sleep(4) #wait for page to load
 #p "wake up"
 
end

#css-1ozv6b7 driver.find_element(:xpath, "//*[@class='btn btn-border']").click


And("I choose Toko") do

driver.find_element(:xpath, "//*[@class='css-10hhgxr']").click
sleep(4) #wait for page to load
end

Then("I see Product") do

el = driver.find_element(:xpath, "//*[@class='css-1u9uw2c']")
assert_not_nil(el, "error")
sleep(4) #wait for page to load
end

And("I click Product") do

driver.find_element(:xpath, "//*[@class='css-1u9uw2c']").click
sleep(4) #wait for page to load
end

Then("I see Popup") do
el = driver.find_element(:xpath, "//*[@class='css-1wlbyqk']")
assert_not_nil(el, "error")
sleep(4) #wait for page to load
end