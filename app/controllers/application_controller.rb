# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthlogicBundle::Authentication
  include AuthlogicBundle::Authorization
  include AuthlogicBundle::Localization
  include SslRequirement

  # bikle 2009-12-06
  before_filter :find_the_user
  def find_the_user
    case 
    when session["user_credentials_id"].nil?
      @the_user= "not_logged_in"
    when User.find(session["user_credentials_id"]).nil?
      @the_user= "not_logged_in"
    else
      @the_user= User.find(session["user_credentials_id"]).email
    end
    @the_user
  end
  # bikle 2009-12-06

  def ssl_required?
    return ENV['SSL'] == 'on' ? true : false if defined? ENV['SSL']
    return false if local_request?
    return false if RAILS_ENV == 'test'
    super
  end

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
