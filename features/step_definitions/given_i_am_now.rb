# given_i_am_now.rb

Given /^I am now "([^\"]*)"$/ do |mylogin|
  # create User object
  @b = User.new(:login => mylogin)
  # pass is r1chbr0wn
  @b.crypted_password = "99f17acbd213c868b29215482802daac14effffba9bca84a0bf315f136e9fa60256f40512dd584f619ae49fec598c930c35b94a3a63cdb8fa6f35820b7cc00c8"
  @b.password_salt = "xk8G296HoQaVCQ9eXPf-"
  @b.email = "#{mylogin}@hotmail.com"
  @b.persistence_token = "x"
  @b.single_access_token = "x"
  @b.perishable_token = "x"
  @b.active = true
  @b.save
  # create TwitterAccount: eugene
  # Associate
end
