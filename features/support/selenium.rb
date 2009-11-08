# ref tools-episode-2-webrat-selenium.mov

Webrat.configure do |config|
  config.mode = :selenium
  config.application_environment = :selenium
end

## Cucumber::Rails.use_transactional_fixtures = false
ActiveSupport::TestCase.use_transactional_fixtures = false

require 'database_cleaner'
DatabaseCleaner.clean_with :truncation # clean once to ensure clean slate
DatabaseCleaner.strategy = :truncation

Before do
  DatabaseCleaner.start
end

After do
  DatabaseCleaner.clean
end
