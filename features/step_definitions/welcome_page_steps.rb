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
  doc = Hpricot(response.body)
  (doc/"body/table.main_table/tr.main_tr/td.lhs/../td").size.should == 2
end

Then /^the LHS column should be relatively narrow$/ do
  # I dont know how to compare the width of LHS with RHS.
  # So just look at it.
end

Then /^the RHS column should be much more prominent$/ do
  # I dont know how to compare the width of LHS with RHS
  # So just look at it.
end

Then /^the LHS column should have the links: about, login, register$/ do
  response.should have_selector("a", :href => "/" , :content => "About") 
  response.should have_selector("a", :href => "/login" , :content => "Login") 
  response.should have_selector("a", :href => "/register" , :content => "Register") 
end

Then /^the RHS should contain the word Welcome and site information$/ do
  response.should contain("Welcome")
  response.should contain("Twitter")
end
