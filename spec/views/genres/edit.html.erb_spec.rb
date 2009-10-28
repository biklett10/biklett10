require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/genres/edit.html.erb" do
  include GenresHelper

  before(:each) do
    assigns[:genre] = @genre = stub_model(Genre,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit genre form" do
    render

    response.should have_tag("form[action=#{genre_path(@genre)}][method=post]") do
      with_tag('input#genre_name[name=?]', "genre[name]")
    end
  end
end
