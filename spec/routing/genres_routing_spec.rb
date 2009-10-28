require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GenresController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "genres", :action => "index").should == "/genres"
    end

    it "maps #new" do
      route_for(:controller => "genres", :action => "new").should == "/genres/new"
    end

    it "maps #show" do
      route_for(:controller => "genres", :action => "show", :id => "1").should == "/genres/1"
    end

    it "maps #edit" do
      route_for(:controller => "genres", :action => "edit", :id => "1").should == "/genres/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "genres", :action => "create").should == {:path => "/genres", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "genres", :action => "update", :id => "1").should == {:path =>"/genres/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "genres", :action => "destroy", :id => "1").should == {:path =>"/genres/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/genres").should == {:controller => "genres", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/genres/new").should == {:controller => "genres", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/genres").should == {:controller => "genres", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/genres/1").should == {:controller => "genres", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/genres/1/edit").should == {:controller => "genres", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/genres/1").should == {:controller => "genres", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/genres/1").should == {:controller => "genres", :action => "destroy", :id => "1"}
    end
  end
end
