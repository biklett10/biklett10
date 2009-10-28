require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/genres/show.html.erb" do
  include GenresHelper
  before(:each) do
    assigns[:genre] = @genre = stub_model(Genre,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end
