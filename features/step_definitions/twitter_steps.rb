# features/step_definitions/twitter_steps.rb
Given /^I am twitter account "([^\"]*)" with pass of "([^\"]*)"$/ do |login, pass|
  @login = login
  @pass = pass
end

When /^I connect to twitter with "([^\"]*)"$/ do |arg1|
  httpauth = eval("Twitter::#{arg1}.new(@login,@pass)")
  @base = Twitter::Base.new(httpauth)
end

Then /^I should try "([^\"]*)"$/ do |arg1|
  eval("p @base.#{arg1}")
end
