# when_register_steps.rb

When /^I register "([^\"]*)"$/ do |mylogin|
  click_link("Register")
  fill_in("Email", :with => "#{mylogin}2009@hotmail.com")
  fill_in("Login", :with => mylogin)
  fill_in("Password", :with => "r1chbr0wn")
  fill_in("Password confirmation", :with => "r1chbr0wn")
  click_button("Register")
  debugger
  response.should contain("Your account has been created. Please check your e-mail")
  # I want session[:login] == nil or "not_logged_in"
  # selenium cannot see the session:
  #  session[:login].should == "not_logged_in" unless session[:login].nil?
  sleep 1
end


