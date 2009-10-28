#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "messages/show.html.erb" do
  before(:each) do
    @message = stub("Message")
    assigns[:message] = @message
  end

  it "should display the text of the message" do
    @message.stub!(:text).and_return "Hello world!"
    render "messages/show2.haml"
    BikleLib.ws2f(response.body,'/tmp/x.txt')
    response.should contain("Hello world!")
  end
end
