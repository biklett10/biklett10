require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/mymessages/show.html.erb" do
  include MymessagesHelper
  before(:each) do
    assigns[:mymessage] = @mymessage = stub_model(Mymessage,
      :amessage => "value for amessage"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ amessage/)
  end
end
