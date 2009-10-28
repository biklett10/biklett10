require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/mymessages/index.html.erb" do
  include MymessagesHelper

  before(:each) do
    assigns[:mymessages] = [
      stub_model(Mymessage,
        :amessage => "value for amessage"
      ),
      stub_model(Mymessage,
        :amessage => "value for amessage"
      )
    ]
  end

  it "renders a list of mymessages" do
    render
    response.should have_tag("tr>td", "value for amessage".to_s, 2)
  end
end
