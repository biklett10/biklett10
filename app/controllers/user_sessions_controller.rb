class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful!"
      session[:login] = (@user_session.login || "not_logged_in")
      # redirect_back_or_default account_url
      redirect_to("/")
    else
      render :action => :new
    end
  end
  
  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    session[:login] = "not_logged_in"
    redirect_to("/")
  end # def destroy

end
