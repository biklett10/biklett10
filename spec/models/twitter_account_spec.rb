require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TwitterAccount do
  before(:each) do
    @valid_attributes = {
      :twitter_pass => "value for twitter_pass",
      :twitter_email => "value for twitter_email",
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    TwitterAccount.create!(@valid_attributes)
  end
end
