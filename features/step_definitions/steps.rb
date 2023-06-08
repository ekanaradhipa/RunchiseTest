require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

require "test/unit/assertions"
include Test::Unit::Assertions

driver = Selenium::WebDriver.for:chrome

Given("I open wetwo") do

 driver.navigate.to "https://wetwo.id/"
 sleep(3) #wait for page to load
 #p "wake up"
 
end

And("I choose Toko") do

driver.find_element(:xpath, "//*[@class='css-10hhgxr']").click
sleep(3) 
end

Then("I see Product") do

el = driver.find_element(:xpath, "//*[@class='css-1u9uw2c']")
assert_not_nil(el, "error")
sleep(2) 
end

And("I click Product") do

driver.find_element(:xpath, "//*[@class='css-1u9uw2c']").click
sleep(3) 
end

Then("I see Popup") do
el = driver.find_element(:xpath, "//*[@class='css-1wlbyqk']")
assert_not_nil(el, "error")
sleep(2) 
end

And('I scroll Popup') do

  iframe = driver.find_element(:xpath, "//*[@class='css-f4db4v']")
    scroll_origin = Selenium::WebDriver::WheelActions::ScrollOrigin.element(iframe)
    driver.action
          .scroll_from(scroll_origin, 0, 350)
          .perform
sleep(3)
end

And('I add product') do
  driver.find_element(:xpath, "//p[contains(.,'Ayam Bakar Bento')]").click
  driver.find_element(:xpath, "//p[contains(.,'Extra Hot')]").click
  sleep(1)
  driver.find_element(:xpath, "//p[contains(.,'Tambah ke Keranjang')]").click
   sleep(1)
end

And('I go to cart') do
	#driver.find_element(:xpath, "//*[@class='css-anr7ky']").click
	driver.navigate.to "https://wetwo.id/product/cart"
   sleep(5)
end