require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/movies/show.html.erb" do
  include MoviesHelper
  before(:each) do
    assigns[:movie] = @movie = stub_model(Movie,
      :title => "value for title",
      :release_year => "value for release_year"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ release_year/)
  end
end
