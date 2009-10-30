# welcome_page_steps.rb

Given /^the server is up$/ do
  # its up
end

Given /^I am not logged in$/ do
  # I am not supposed to be logged in.
  # Raise an error if I am logged in.
  raise("I am logged in") unless defined?(current_user).nil?
end

# When I go to the homepage

Then /^I should see a page with 2 columns$/ do
  pending
end

Then /^the LHS column should be relatively narrow$/ do
  pending
end

Then /^the RHS column should be much more prominent$/ do
  pending
end

Then /^the LHS column should have the links: about, login, register$/ do
  pending
end

Then /^the RHS should contain the word Welcome and site information$/ do
  pending
end
