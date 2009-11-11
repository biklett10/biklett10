require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/sent/index" do
  before(:each) do
    @messages = Message.all
    render 'sent/index', :layout => false
  end # describe

  #Delete this example and add some real ones or delete this file
  it "should list sent messages" do
    response.should have_tag('h2', %r[Sent Messages])
  end # it

end
