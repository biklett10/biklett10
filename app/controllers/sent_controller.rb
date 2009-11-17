class SentController < ApplicationController

  def index
    @messages = current_user.sent_messages.paginate :per_page => 10, :page => params[:page], :order => "created_at DESC"
  end

  def show
    @message = current_user.sent_messages.find(params[:id])
  end

  def new
    @message = current_user.sent_messages.build
  end
  
  def create
    @message = current_user.sent_messages.build(params[:message])
    # Get a list of recipients
    logins = params.keys - ["commit", "action", "controller", "message"]
    # Attach them to the @message
    logins.each{ |login| @message.recipients << User.find_by_login(login) }
    if @message.save
      flash[:notice] = "Message sent."
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end
end
