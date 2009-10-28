require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/genres/index.html.erb" do
  include GenresHelper

  before(:each) do
    assigns[:genres] = [
      stub_model(Genre,
        :name => "value for name"
      ),
      stub_model(Genre,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of genres" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end
