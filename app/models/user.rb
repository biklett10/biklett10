class User < ActiveRecord::Base
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

  # added to app/models/notifier.rb
  def activation_instructions(user)
    subject       "Activation Instructions"
    from          "Binary Logic Notifier <noreply@binarylogic.com>"
    recipients    user.email
    sent_on       Time.now
    body          :account_activation_url => register_url(user.perishable_token)
  end

  def activation_confirmation(user)
    subject       "Activation Complete"
    from          "Binary Logic Notifier <noreply@binarylogic.com>"
    recipients    user.email
    sent_on       Time.now
    body          :root_url => root_url
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

