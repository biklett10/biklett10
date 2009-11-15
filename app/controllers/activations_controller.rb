class ActivationsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]

  def new
    @user = User.find_using_perishable_token(params[:activation_code], 1.week) || (raise Exception,"Problem finding User using token.")
    raise(Exception,"Maybe @user is active.") if @user.active?
  end

  def create
    @user = User.find(params[:id])

    raise Exception if @user.active?

    if @user.activate!
      @user.deliver_activation_confirmation!(request.host_with_port)
      redirect_to "/"
    else
      render :action => :new
    end # if
  end # def create

  # For testing
  def create_activation_instructions
    @host_with_port = request.host_with_port
    @me = User.find_by_login(params[:mylogin])
    email_txt = Notifier.create_activation_instructions(@me,@host_with_port)
    render(:text => "<pre>" + email_txt.encoded + "</pre>") 
  end # def create_activation_instructions

end # class
