require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/mymessages/new.html.erb" do
  include MymessagesHelper

  before(:each) do
    assigns[:mymessage] = stub_model(Mymessage,
      :new_record? => true,
      :amessage => "value for amessage"
    )
  end

  it "renders new mymessage form" do
    render

    response.should have_tag("form[action=?][method=post]", mymessages_path) do
      with_tag("input#mymessage_amessage[name=?]", "mymessage[amessage]")
    end
  end
end
