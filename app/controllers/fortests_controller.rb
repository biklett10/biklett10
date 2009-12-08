class FortestsController < ApplicationController
  before_filter :root_if_production

  require "declarative_authorization/maintenance"
  include Authorization::Maintenance

  require "authlogic_bundle/maintenance"
  include AuthlogicBundle::Maintenance

  def register
  end
  def login
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

  def post_login
    a_login= params[:a_login]
    a_user= User.find_by_login a_login
    session["user_credentials"]= a_user.persistence_token
    session["user_credentials_id"]= a_user.id
    redirect_to root_url  
  end

  def root_if_production
    if RAILS_ENV== "production"
      flash[:notice]= "You have been redirected to root_url"
      redirect_to root_url  
    end
  end # def

end # class
