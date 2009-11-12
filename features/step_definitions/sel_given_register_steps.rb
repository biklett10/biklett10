# features/step_definitions/given_register_steps.rb

Given /^Using selenium I register and activate "([^\"]*)" with "([^\"]*)"$/ do |mylogin,mypass|
  visit("/")
  click_link("Register")
  fill_in("Email", :with => "#{mylogin}2009@hotmail.com")
  fill_in("Login", :with => mylogin)
  fill_in("Password", :with => mypass)
  fill_in("Password confirmation", :with => mypass)
  click_button("Register")
  response.should contain("Your account has been created. Please check your e-mail")
  # I want session[:login] == nil or "not_logged_in"
  # selenium cannot see session:
  # session[:login].should == "not_logged_in" unless session[:login].nil?
  @me = User.find_by_login(mylogin)
  @me.active = true
  @me.save
end
