# features/step_definitions/movie_steps.rb
require 'ruby-debug'
## require 'bikle_lib'

When /^I create a movie Caddyshack in the Comedy genre$/ do 
  visit movies_path 
  debugger
  click_link "Add Movie" 
  fill_in "Title", :with => "Caddyshack" 
  select "1980", :from => "Release Year" 
  check "Comedy" 
  click_button "Save" 
end 


Then /^Caddyshack should be in the Comedy genre$/ do
  visit genres_path
  click_link "Comedy"
  save_and_open_page 
  response.should contain("1 movie")
  response.should contain("Caddyshack")
end
