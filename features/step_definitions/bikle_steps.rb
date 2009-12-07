#
# features/step_definitions/bikle_steps.rb
#

# and_saop_steps.rb
When /^saop$/ do
  save_and_open_page
end

# and_debug_steps.rb
When /^debug$/ do
  debugger 
end
# welcome_page_steps.rb

Given /^the server is up$/ do
  # its up
end

Given /^I am not logged in$/ do
  # I am not supposed to be logged in.
  # Raise an error if I am logged in.
  raise("I am logged in") unless defined?(current_user).nil?
end

Then /^the LHS column should be relatively narrow$/ do
  # I dont know how to compare the width of LHS with RHS.
  # So just look at it.
end

Then /^the RHS column should be much more prominent$/ do
  # I dont know how to compare the width of LHS with RHS
  # So just look at it.
end

Then /^the LHS column should have the links: login, register$/ do
  response.should_not have_selector("a", :href => "/" , :content => "About") 
  response.should have_selector("a", :href => "/login" , :content => "Login") 
  response.should have_selector("a", :href => "/register" , :content => "Register") 
end

Then /^the RHS should only contain the word Welcome$/ do
  response.should have_selector("html/body/table.main_table/tr.main_tr/td.rhs/h1", :content => "Welcome") 
end


Given /^I am "([^\"]*)" an anonymous user$/ do |arg1|
  visit '/logout'
end

When /^the form should have 1 field named email$/ do
  pending # express the regexp above with the code you wish you had
end

When /^the form should have a submit button named submit$/ do
  pending # express the regexp above with the code you wish you had
end

When /^when I fill in email with "([^\"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I press submit$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should get redirected away$/ do
  pending # express the regexp above with the code you wish you had
end
