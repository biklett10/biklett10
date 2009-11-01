# activation_barrier.feature

Given /^that I have just created an account$/ do
  visit path_to("the register page")
  fill_in "Email", :with => "x9b0bsm1th2009@hotmail.com"
  fill_in "Login", :with => "bobsmith"
  fill_in "Password", :with => "r1chbr0wn"
  fill_in "Password confirmation", :with => "r1chbr0wn"
  click_button "Register"
end

When /^I try to login to that account$/ do
  visit path_to("the login page")
  fill_in "Login", :with => "bobsmith"
  fill_in "Password", :with => "r1chbr0wn"
  # save_and_open_page
  click_button "Login"
end


When /^I have not activated it yet$/ do
  @bobsmith = User.find_by_login("bobsmith")
  p "@bobsmith is active? #{@bobsmith.active}"
  # save_and_open_page
end
