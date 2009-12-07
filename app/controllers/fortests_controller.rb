class FortestsController < ApplicationController
  before_filter :root_if_production

require "declarative_authorization/maintenance"
include Authorization::Maintenance

require "authlogic_bundle/maintenance"
include AuthlogicBundle::Maintenance

  def register

  end

  def post_register
    a_login= params[:a_login]
    AuthlogicBundle::Maintenance.speak = true
    create_roles_from_rule_file
    a_user= create_user_by_login(a_login, ['customer'])
    a_user.email= "#{a_user.login}@yahoo.com"
    a_user.save
    p a_user
    redirect_to root_url  
  end

  def activate
  end

  def login
    richard= User.find_by_login "richbrown"
    session[:user_credentials]= richard.persistence_token
    session[:user_credentials_id]= richard.id
    redirect_to root_url  
  end

  def root_if_production
    if RAILS_ENV== "production"
      flash[:notice]= "You have been redirected to root_url"
      redirect_to root_url  
    end
  end # def

end # class
