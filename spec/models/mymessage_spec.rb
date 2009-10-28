require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Mymessage do
  before(:each) do
    @valid_attributes = {
      :amessage => "value for amessage"
    }
  end

  it "should create a new instance given valid attributes" do
    Mymessage.create!(@valid_attributes)
  end
end
