require 'spec_helper'

describe StaticController do

  #Delete these examples and add some real ones
  it "should use StaticController" do
    controller.should be_an_instance_of(StaticController)
  end


  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'check_email'" do
    it "should be successful" do
      get 'check_email'
      response.should be_success
    end
  end

  describe "GET 'messages'" do
    it "should be successful" do
      get 'messages'
      response.should be_success
    end
  end
end
