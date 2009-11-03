# when_activate_steps.rb

When /^I activate "([^\"]*)"$/ do |mylogin|
  @me = User.find_by_login(mylogin)
  visit("/activations/create_activation_instructions/?mylogin=#{mylogin}")
  response.should contain("Click the url below to activate your account")
  @the_activation_url = "/register/"
  scan_a = response.body.scan(/(http:)(.*)(\/register\/)(\w+)(.*)/).flatten
  # We need the 3rd element in scan_a to complete the activation url.
  @the_activation_url << scan_a[3]
  visit(@the_activation_url)
  click_button("Activate")
end


