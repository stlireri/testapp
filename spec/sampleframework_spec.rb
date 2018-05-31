require 'rubygems'
require 'selenium-webdriver'

describe "selenium Recipes- start different browsers" do

    before(:all) do
        @driver = Selenium::WebDriver.for (:chrome)
    end

    before(:each) do
        @driver.navigate.to("https://www.google.com")
    end


    after(:all) do
        @driver.quit
    end


    it "starts Chrome" do
        @driver.navigate.to("https://www.google.com")
        sleep 5
        expect(@driver.title).to eq("Google")
    end

end
