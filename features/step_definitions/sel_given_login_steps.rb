# given_login_steps.rb

Given /^Using selenium I login as "([^\"]*)" with password "([^\"]*)"$/ do |mylogin,mypass|
  visit("/")
  click_link("Login")
  fill_in("Login", :with => mylogin)
  fill_in("Password", :with => mypass)
  click_button("Login")
  response.should contain(mylogin)
  response.should contain("Login successful")
  response.should contain("Welcome")
end


