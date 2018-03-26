
require "selenium-webdriver"
#require "chrome module"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :chrome

#Loading the assertselenium URL
driver.navigate.to "http://nm.m-kopa.net"

#Clicking on the Follow link present on the assertselenium home page
#FollowButton  = driver.find_element(:link, "Follow")
#FollowButton.click


#Typing the UserName
LoginButton = driver.find_element(:id, "UserNameOrEmail")
LoginButton.send_keys "sampleuser77dff27"

#Typing the Email-Id
EmailId = driver.find_element(:id, "Password")
EmailId.send_keys "sampleuser7f7df27@gmail.com"

#Clicking on the Submit Button
SubmitButton = driver.find_element(:xpath, "//input[@type='submit']")
SubmitButton.click

#Asserting whether the registration error message is diaplyed
SuccessMessage = driver.find_element(:xpath, "//li[contains(.,'Invalid user name or password')]")
"invalid user name or password".eql? SuccessMessage.text

#puts "Successfully completed the user registration and validated the Success message"

#Quitting the browser
driver.quit

