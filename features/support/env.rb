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

#Webrat.configure do |config|
##  config.mode = :selenium
#  config.mode = :rails
#  # This gives error. I comment it out: config.selenium_wait_timeout = 10
#end

#class ActiveSupport::TestCase
#  self.use_transactional_fixtures = false
#  setup do |session|
#    session.host! "localhost:3001"
#  end
#end

require 'cucumber/rails/rspec'
require 'webrat/core/matchers'

# ch 22 of RSpec book:
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
