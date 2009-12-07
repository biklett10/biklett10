#
# hpricot_steps.rb
#


# When I go to the homepage
When /^I should see a page with 2 columns$/ do
  doc = Hpricot(response.body)
  (doc/"body/table.main_table/tr.main_tr/td.lhs/../td").size.should == 2
end

# When /^I should see a form named new_user with 1 input named user_email$/ do

When /^I should see a "([^\"]*)" named "([^\"]*)" with 1 "([^\"]*)" named "([^\"]*)"$/ do |e1,n1,e2,n2|
  doc = Hpricot(response.body)
  # I want doc_s to be something like "form#new_user input#user_email"
  doc_s = e1 + '#' + n1 + ' ' + e2 + '#' + n2
  (doc/doc_s).size.should == 1
end
