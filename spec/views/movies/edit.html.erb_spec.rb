require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/movies/edit.html.erb" do
  include MoviesHelper

  before(:each) do
    assigns[:movie] = @movie = stub_model(Movie,
      :new_record? => false,
      :title => "value for title",
      :release_year => "value for release_year"
    )
  end

  it "renders the edit movie form" do
    render

    response.should have_tag("form[action=#{movie_path(@movie)}][method=post]") do
      with_tag('input#movie_title[name=?]', "movie[title]")
      with_tag('input#movie_release_year[name=?]', "movie[release_year]")
    end
  end
end
