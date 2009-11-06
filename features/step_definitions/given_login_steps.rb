# given_login_steps.rb

Given /^I login as "([^\"]*)" with password "([^\"]*)"$/ do |mylogin,mypass|
  visit("/")
  click_link("Login")
  fill_in("Login", :with => mylogin)
  fill_in("Password", :with => mypass)
  click_button("Login")
  response.should contain(mylogin)
  response.should contain("Login successful")
  response.should contain("Welcome")
  session[:login].should == mylogin
end


