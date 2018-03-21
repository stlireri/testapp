
require "selenium-webdriver"

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
SubmitButton = driver.find_elements(:name, "Sign In")
SubmitButton.Click

#Asserting whether the registration success message is diaplyed
SuccessMessage = driver.find_element(:css, "div#divLoginFormSub > form > div:nth-of-type(2) > div > ul > li:nth-of-type(2)")
"invalid email or password".eql? SuccessMessage.text
#puts "Successfully completed the user registration and validated the Success message"

#Quitting the browser
driver.quit

