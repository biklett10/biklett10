class User < ActiveRecord::Base
  acts_as_authentic

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


end # class

