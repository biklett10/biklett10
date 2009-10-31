# registration_steps.rb

When /^I fill in Email with x9b0bsm1th2009@hotmail.com$/ do
  fill_in "Email", :with => "x9b0bsm1th2009@hotmail.com"
  save_and_open_page
end

When /^I fill in Login with bobsmith$/ do
  fill_in "Login", :with => "bobsmith"
end

When /^I fill in Password with r1chbr0wn$/ do
  fill_in "Password", :with => "r1chbr0wn"
end

When /^I fill in Password confirmation with r1chbr0wn$/ do
  fill_in "Password confirmation", :with => "r1chbr0wn"
end

When /^I press Register$/ do
  click_button "Register"
end

