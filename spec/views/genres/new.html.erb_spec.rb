require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/genres/new.html.erb" do
  include GenresHelper

  before(:each) do
    assigns[:genre] = stub_model(Genre,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new genre form" do
    render

    response.should have_tag("form[action=?][method=post]", genres_path) do
      with_tag("input#genre_name[name=?]", "genre[name]")
    end
  end
end
