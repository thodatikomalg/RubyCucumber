Given(/^when i launch the website$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto 'http://newtours.demoaut.com/mercurywelcome.php'
end

When(/^i enter username "([^"]*)"$/) do |username|
  on(LoginPage).username_element.set username
  #@browser.text_field(:name => 'userName').set username
end

And(/^i enter password "([^"]*)"$/) do |password|
  on(LoginPage).password_element.set password
 # @browser.text_field(:name => 'password').set password
end

And(/^i click on submit button$/) do
  on(LoginPage).sign_in_element.click
 # @browser.button(:value => 'Login').click
end

Then(/^i should register successfully$/) do
  expect(@browser.button(:name => 'findFlights').visible?).to be true
end

Then(/^click on the register link$/) do
  on(LoginPage).register_element.click
end

When(/^I enter the following information on registration page$/) do |table|
  # table is a table.hashes.keys # => [:First Name, :Zaps]
  (0..10).each do |i|
      on(RegisterPage).send("#{table.raw[i][0].downcase.gsub(' ','_')}_element").set table.raw[i][1]
  end
end

And(/^I select "([^"]*)" for country dropdown$/) do |country|
  on(RegisterPage).country_element.select country
end

And(/^I click submit button on registration Page$/) do
  on(RegisterPage).submit_element.click
end

Then(/^I should be registered successfully$/) do
  actual_text = on(RegisterPage).success_message_element.text
  expect(actual_text).to include 'Dear'
end