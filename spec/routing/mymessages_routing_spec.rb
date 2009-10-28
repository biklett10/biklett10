require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe MymessagesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "mymessages", :action => "index").should == "/mymessages"
    end

    it "maps #new" do
      route_for(:controller => "mymessages", :action => "new").should == "/mymessages/new"
    end

    it "maps #show" do
      route_for(:controller => "mymessages", :action => "show", :id => "1").should == "/mymessages/1"
    end

    it "maps #edit" do
      route_for(:controller => "mymessages", :action => "edit", :id => "1").should == "/mymessages/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "mymessages", :action => "create").should == {:path => "/mymessages", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "mymessages", :action => "update", :id => "1").should == {:path =>"/mymessages/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "mymessages", :action => "destroy", :id => "1").should == {:path =>"/mymessages/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/mymessages").should == {:controller => "mymessages", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/mymessages/new").should == {:controller => "mymessages", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/mymessages").should == {:controller => "mymessages", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/mymessages/1").should == {:controller => "mymessages", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/mymessages/1/edit").should == {:controller => "mymessages", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/mymessages/1").should == {:controller => "mymessages", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/mymessages/1").should == {:controller => "mymessages", :action => "destroy", :id => "1"}
    end
  end
end
