# features/step_definitions/see_my_twitter_accounts_steps.rb
Given /^as "([^\"]*)" I own twitter accounts "([^\"]*)"$/ do |owner,twitter_accounts|
  @owner = User.find_by_login(owner) # get future owner of twitter accounts
  ta_a = twitter_accounts.split # put twitter accounts in array
  # attach each account to the owner
  ta_a.each{ |ta| @owner.twitter_accounts << TwitterAccount.new(:twitter_login => ta)}
  @owner.save
end

Given /^I login as bobsmith twitter account owner$/ do
  p @owner.twitter_accounts.size
end
