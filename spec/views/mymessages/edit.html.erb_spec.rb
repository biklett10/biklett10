require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/mymessages/edit.html.erb" do
  include MymessagesHelper

  before(:each) do
    assigns[:mymessage] = @mymessage = stub_model(Mymessage,
      :new_record? => false,
      :amessage => "value for amessage"
    )
  end

  it "renders the edit mymessage form" do
    render

    response.should have_tag("form[action=#{mymessage_path(@mymessage)}][method=post]") do
      with_tag('input#mymessage_amessage[name=?]', "mymessage[amessage]")
    end
  end
end
