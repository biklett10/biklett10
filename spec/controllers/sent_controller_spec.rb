require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SentController do

  # Bikle 2009-11-11
  it "should use SentController" do
    controller.should be_an_instance_of(SentController)
  end
  # new corresponds to "Compose" in the view.
  describe "GET 'new'" do
    it "should be successful" do
      debugger
      get 'new'
      response.should be_success
    end
  end
end
