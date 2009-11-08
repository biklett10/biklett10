# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "cucumber"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'

# Comment out the next line if you don't want Cucumber Unicode support
require 'cucumber/formatter/unicode'

# Comment out the next line if you don't want transactions to
# open/roll back around each scenario
## comment out for selenium: Cucumber::Rails.use_transactional_fixtures

# Comment out the next line if you want Rails' own error handling
# (e.g. rescue_action_in_public / rescue_responses / rescue_from)
Cucumber::Rails.bypass_rescue

require 'webrat'

# Webrat.configure do |config|
#   config.mode = :rails
# end
Webrat.configure do |config|
  config.mode = :selenium
  # config.selenium_wait_timeout = 10
end

class ActiveSupport::TestCase
  setup do |session|
    session.host! "localhost:3001"
  end
end

require 'cucumber/rails/rspec'
require 'webrat/core/matchers'
