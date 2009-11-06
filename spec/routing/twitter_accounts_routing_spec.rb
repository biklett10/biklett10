require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TwitterAccountsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "twitter_accounts", :action => "index").should == "/twitter_accounts"
    end

    it "maps #new" do
      route_for(:controller => "twitter_accounts", :action => "new").should == "/twitter_accounts/new"
    end

    it "maps #show" do
      route_for(:controller => "twitter_accounts", :action => "show", :id => "1").should == "/twitter_accounts/1"
    end

    it "maps #edit" do
      route_for(:controller => "twitter_accounts", :action => "edit", :id => "1").should == "/twitter_accounts/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "twitter_accounts", :action => "create").should == {:path => "/twitter_accounts", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "twitter_accounts", :action => "update", :id => "1").should == {:path =>"/twitter_accounts/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "twitter_accounts", :action => "destroy", :id => "1").should == {:path =>"/twitter_accounts/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/twitter_accounts").should == {:controller => "twitter_accounts", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/twitter_accounts/new").should == {:controller => "twitter_accounts", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/twitter_accounts").should == {:controller => "twitter_accounts", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/twitter_accounts/1").should == {:controller => "twitter_accounts", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/twitter_accounts/1/edit").should == {:controller => "twitter_accounts", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/twitter_accounts/1").should == {:controller => "twitter_accounts", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/twitter_accounts/1").should == {:controller => "twitter_accounts", :action => "destroy", :id => "1"}
    end
  end
end
