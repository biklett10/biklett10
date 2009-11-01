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

end # class

