class User < ActiveRecord::Base
  include AuthlogicBundle::User

  acts_as_authentic

  named_scope :active, :conditions => ['state = ?', 'active']
  # bikle 2009-1208
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
  # bikle 2009-1208
end
