# features/step_definitions/genre_steps.rb

Given /^a genre named Comedy$/ do
  @comedy = Genre.create!(:name => "Comedy")
end
