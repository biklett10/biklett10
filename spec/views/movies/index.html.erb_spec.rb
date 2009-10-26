require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/movies/index.html.erb" do
  include MoviesHelper

  before(:each) do
    assigns[:movies] = [
      stub_model(Movie,
        :title => "value for title",
        :release_year => "value for release_year"
      ),
      stub_model(Movie,
        :title => "value for title",
        :release_year => "value for release_year"
      )
    ]
  end

  it "renders a list of movies" do
    render
    response.should have_tag("tr>td", "value for title".to_s, 2)
    response.should have_tag("tr>td", "value for release_year".to_s, 2)
  end
end
