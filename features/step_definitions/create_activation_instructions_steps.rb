# features/step_definitions/create_activation_instructions_steps.rb

Then /^I should see an activation link$/ do
  @bobsmith = User.find_by_login("bobsmith")
  # line below needs to be called by a controller:
  # email_txt = Notifier.create_activation_instructions(@bobsmith)
  # Here is a controller I like:
  # app/controllers/activations_controller.rb
  # Here is a method I wrote just for this test:
  # create_activation_instructions()
  visit("/activations/create_activation_instructions")
  response.should contain("Click the url below to activate your account")
  @the_activation_url = "/register/"
  scan_a = response.body.scan(/(http:)(.*)(\/register\/)(\w+)(.*)/).flatten
  # We need the 3rd element in scan_a to complete the activation url.
  @the_activation_url << scan_a[3]
end

Then /^I can use that link to activate$/ do
  visit(@the_activation_url)
  # save_and_open_page
  click_button("Activate")
end

Then /^You inspect the currently loaded page$/ do
  save_and_open_page
end

Then /^I should be logged in$/ do
  @user_session.login.should == @bobsmith.login
end
