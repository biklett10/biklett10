# features/step_definitions/genre_steps.rb

Given /^a genre named Comedy$/ do
  @comedy = Genre.create!(:name => "Comedy")
end
# Move When-step to movie_steps.rb
# When /^I create a movie Caddyshack in the Comedy genre$/ do
#   @caddyshack = Movie.create!(:name => "Caddyshack", :genre => @comedy)
# end
