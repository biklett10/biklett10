class User < ActiveRecord::Base
  acts_as_authentic

  # added to user.rb
  attr_accessible :login, :email, :password, :password_confirmation, :openid_identifier

  def active?
    active
  end

end # class

