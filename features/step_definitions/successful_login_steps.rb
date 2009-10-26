# features/step_definitions/successful_login_steps.rb

Given /^I am the registered user (.+)$/ do |login|
  params = {
    "login"=> login,
    "password"=>"password",
    "password_confirmation"=>"password"
  }
  @user = User.create(params)
end

When /^I login with valid credentials$/ do
  fill_in('Login', :with => @user.login)
  fill_in('Password', :with => "password")
  click_button("Login")
end

Then /^I should be on ([^\"]*)$/ do |page_name|
  response.request.path.should == path_to(page_name)
end
