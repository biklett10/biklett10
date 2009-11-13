# given_i_own_twitter_accts.rb


Given /^I "([^\"]*)" own twitter accounts$/ do |mylogin|
  me = User.find_by_login(mylogin)
  eugene = TwitterAccount.new(:twitter_login => "eugene_dentist8",
                              :twitter_pass => "ph1llynyfl",
                              :twitter_email => "eugene_dentist86@hotmail.com"
                              )
  me.twitter_accounts << eugene
  me.save
end
