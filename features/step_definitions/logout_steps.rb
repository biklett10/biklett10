# features/step_definitions/logout_steps.rb

Given /^that I have an activated account$/ do
  # register
  visit path_to("the register page")
  fill_in "Email", :with => "x9b0bsm1th2009@hotmail.com"
  fill_in "Login", :with => "bobsmith"
  fill_in "Password", :with => "r1chbr0wn"
  fill_in "Password confirmation", :with => "r1chbr0wn"
  click_button "Register"
  # activate
  @bobsmith = User.find_by_login("bobsmith")
  visit("/activations/create_activation_instructions/?mylogin=bobsmith")
  response.should contain("Click the url below to activate your account")
  @the_activation_url = "/register/"
  scan_a = response.body.scan(/(http:)(.*)(\/register\/)(\w+)(.*)/).flatten
  # We need the 3rd element in scan_a to complete the activation url.
  @the_activation_url << scan_a[3]
  visit(@the_activation_url)
  # save_and_open_page
  click_button("Activate")
end

Given /^I fill in "([^\"]*)" wih "([^\"]*)"$/ do |field,value|
  fill_in(field, :with => value)
end

Then /^I should see a logout link$/ do
  response.should contain("Logout")
end

Then /^I can use that link to logout$/ do
  click_link("Logout")
end

Then /^I should not be logged in$/ do
  session[:login].should == "not_logged_in"
  response.should contain("not_logged_in")
end



