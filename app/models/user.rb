class User < ActiveRecord::Base



  # http://www.novawave.net/public/rails_messaging_tutorial.html
  has_many :sent_messages, :class_name => "Message", :foreign_key => "author_id"
  has_many :received_messages, :class_name => "MessageCopy", :foreign_key => "recipient_id"
  has_many :folders
  before_create :build_inbox
  
  def inbox
    folders.find_by_name("Inbox")
  end
  
  def build_inbox
    folders.build(:name => "Inbox")
  end
  # http://www.novawave.net/public/rails_messaging_tutorial.html


  
  # For authlogic 2.0+
  # step 8 http://github.com/matthooks/authlogic-activation-tutorial
  acts_as_authentic do |c|
    c.validates_length_of_password_field_options = {:on => :update, :minimum => 4, :if => :has_no_credentials?}
    c.validates_length_of_password_confirmation_field_options = {:on => :update, :minimum => 4, :if => :has_no_credentials?}
  end


  # added to user.rb
  attr_accessible :login, :email, :password, :password_confirmation, :openid_identifier

  def active?
    active
  end

  # step 4 
  # http://github.com/matthooks/authlogic-activation-tutorial
  # added to user.rb
  def activate!
    self.active = true
    save
  end

  # step 5
  # http://github.com/matthooks/authlogic-activation-tutorial
  # added to app/models/user.rb
  def deliver_activation_instructions!
    reset_perishable_token!
    Notifier.deliver_activation_instructions(self)
  end

  def deliver_activation_confirmation!
    reset_perishable_token!
    Notifier.deliver_activation_confirmation(self)
  end

  # step 8 http://github.com/matthooks/authlogic-activation-tutorial
  # we need to make sure that either a password or openid gets set
  # when the user activates his account
  def has_no_credentials?
    self.crypted_password.blank? && self.openid_identifier.blank?
  end

  # ...
  # now let's define a couple of methods in the user model. The first
  # will take care of setting any data that you want to happen at signup
  # (aka before activation)
  def signup!(params)
    self.login = params[:user][:login]
    self.email = params[:user][:email]
    save_without_session_maintenance
  end


end # class

