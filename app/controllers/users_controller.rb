class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    # Saving without session maintenance to skip
    # auto-login which can't happen here because
    # the User has not yet been activated
    if @user.save_without_session_maintenance
      @user.deliver_activation_instructions!
      flash[:notice] = "Your account has been created. Please check your e-mail"
      redirect_to "/static/check_email"
    else
      render :action => :new
    end
  end # def create
  
  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    (redirect_to "/" ; return) unless @user.valid_password?(params["cp"]["current_password"])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to "/"
    else
      render :action => :edit
    end
  end # def update

  def profile
  end

  def change_password
    @user = User.find_by_login(session[:login])
  end

end # class

