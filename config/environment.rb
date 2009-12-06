# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

# bikle
require 'hpricot'
require 'ruby-debug'
Hpricot.buffer_size = 262144
# bikle

Rails::Initializer.run do |config|

  # bikle 2009-12-05
  config.gem 'haml', :version => '2.2.14'
  config.gem 'hpricot', :version => '0.8.1'
  config.gem 'will_paginate', :version => '2.3.11'
  # bikle 2009-12-05

  # bikle 2009-12-01
  # keeps AR messages in my log files and server console more clean
  config.active_record.colorize_logging = false
  config.gem 'selenium-client', :lib => false, :version => '1.2.17'
  config.gem 'Selenium', :lib => false, :version => '1.1.14'
  config.gem 'database_cleaner', :version => '0.2.3'
  # bikle 2009-12-01

  # bikle 2009-11-30
  config.gem 'bmabey-email_spec', :lib => 'email_spec'
  config.gem 'rspec-rails', :lib => false
  config.gem 'rspec', :lib => false
  config.gem 'cucumber'
  config.gem 'webrat'
  config.gem 'nokogiri'
  config.action_controller.session_store = :active_record_store
  # bikle 2009-11-30

  config.gem 'bcrypt-ruby', :lib => 'bcrypt', :version => '>=2.1.2'
  config.gem 'authlogic', :version => '>=2.1.3'
  config.gem 'authlogic-oid', :lib => 'authlogic_openid', :version => '>=1.0.4'
  config.gem 'ruby-openid', :lib => 'openid', :version => '>=2.1.7'
  config.gem 'declarative_authorization', :lib => 'declarative_authorization', :source => 'http://gemcutter.org', :version => '>=0.3.2.3'
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
end
