#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "test"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'

# Comment out the next line if you don't want Cucumber Unicode support
require 'cucumber/formatter/unicode'

# Comment out the next line if you don't want transactions to
# open/roll back around each scenario
# Cucumber::Rails.use_transactional_fixtures

# Comment out the next line if you want Rails' own error handling
# (e.g. rescue_action_in_public / rescue_responses / rescue_from)
Cucumber::Rails.bypass_rescue

require 'webrat'

Webrat.configure do |config|
  case ENV["RAILS_ENV"]
    when "selenium"
      config.mode = :selenium
    else
      config.mode = :rails
  end # case
end # Webrat.configure 

class ActiveSupport::TestCase
  setup do |session|
    session.host! "localhost:3001"
  end
end

require 'cucumber/rails/rspec'
require 'webrat/core/matchers'

require 'database_cleaner' 
require 'database_cleaner/cucumber' 
DatabaseCleaner.clean_with :truncation # clean once to ensure clean slate
DatabaseCleaner.strategy = :truncation
 
# tools-episode-2-webrat-selenium.mov:
 
Before do
  DatabaseCleaner.start
end
 
After do
  DatabaseCleaner.clean
end

