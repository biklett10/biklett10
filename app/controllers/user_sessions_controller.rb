class UserSessionsController < ApplicationController
  ssl_required :new, :create, :destroy
  before_filter :require_no_user, :only => [:new, :create]
  # before_filter :require_user, :only => :destroy

  # GET /login
  def new
    @user_session = UserSession.new
  end

  # POST /user_session
  def create
    @user_session = UserSession.new(params[:user_session])

    @user_session.save do |result|
      if result
        flash[:success] = t('user_sessions.flashs.success.create')
        session[:language] = nil
        session[:return_to] = nil if session[:return_to] == "/logout"
        redirect_back_or_default account_url
      else
        render :action => :new
      end
    end
  end

  # DELETE /logout
  def destroy
    current_user_session.destroy unless current_user_session.nil?
    flash[:success] = t('user_sessions.flashs.success.destroy')
    session[:language] = nil
    session[:return_to] = nil
    # bikle 2009-12-06
    session[:user_credentials]= nil
    session[:user_credentials_id]= nil
    # bikle 2009-12-06
    # redirect_to "http://login.yahoo.com/config/login?logout=1"
    redirect_to root_url
  end
end
