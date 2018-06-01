
require "selenium-webdriver"
#require "chrome module"

@driver = Selenium::WebDriver.for :chrome
@url = "https://www.myvsms.com/"

@driver.manage.window.maximize

@driver.navigate.to @url 
@driver.manage.timeouts.implicit_wait = 3 

@driver.find_element(:id, 'login').click
#Typing the UserName
@driver.find_element(:id, 'email').send_keys "sampleuser7f7df27@gmail.com"
#Typing the UserName
@driver.find_element(:id, 'password').send_keys "sppemmc"
#Clicking on the Submit Button
@driver.find_element(:id, 'login-btn').click

#Asserting whether the registration error message is diaplyed
SuccessMessage = @driver.find_element(:xpath, "//*[@id='wrapper']/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]/fieldset[1]/div[2]/div[1]/span[1]/strong[1]")
"These credentials do not match our records.".eql? SuccessMessage.text

verify { assert element_present?(:xpath, "//*[@id='wrapper']/div[1]/div[1]/div[1]/div[1]/div[2]/form[1]/fieldset[1]/div[2]/div[1]/span[1]/strong[1]") }

#puts "Successfully completed the user registration and validated the Success message"

#Quitting the browser
@driver.quit
#logging the output
Selenium::WebDriver.logger.level = :debug
Selenium::WebDriver.logger.level = :'selenium.log'
Selenium::WebDriver.logger.level = :info