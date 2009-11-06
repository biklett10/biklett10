require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TwitterAccountsController do

  def mock_twitter_account(stubs={})
    @mock_twitter_account ||= mock_model(TwitterAccount, stubs)
  end

  describe "GET index" do
    it "assigns all twitter_accounts as @twitter_accounts" do
      TwitterAccount.stub!(:find).with(:all).and_return([mock_twitter_account])
      get :index
      assigns[:twitter_accounts].should == [mock_twitter_account]
    end
  end

  describe "GET show" do
    it "assigns the requested twitter_account as @twitter_account" do
      TwitterAccount.stub!(:find).with("37").and_return(mock_twitter_account)
      get :show, :id => "37"
      assigns[:twitter_account].should equal(mock_twitter_account)
    end
  end

  describe "GET new" do
    it "assigns a new twitter_account as @twitter_account" do
      TwitterAccount.stub!(:new).and_return(mock_twitter_account)
      get :new
      assigns[:twitter_account].should equal(mock_twitter_account)
    end
  end

  describe "GET edit" do
    it "assigns the requested twitter_account as @twitter_account" do
      TwitterAccount.stub!(:find).with("37").and_return(mock_twitter_account)
      get :edit, :id => "37"
      assigns[:twitter_account].should equal(mock_twitter_account)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created twitter_account as @twitter_account" do
        TwitterAccount.stub!(:new).with({'these' => 'params'}).and_return(mock_twitter_account(:save => true))
        post :create, :twitter_account => {:these => 'params'}
        assigns[:twitter_account].should equal(mock_twitter_account)
      end

      it "redirects to the created twitter_account" do
        TwitterAccount.stub!(:new).and_return(mock_twitter_account(:save => true))
        post :create, :twitter_account => {}
        response.should redirect_to(twitter_account_url(mock_twitter_account))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved twitter_account as @twitter_account" do
        TwitterAccount.stub!(:new).with({'these' => 'params'}).and_return(mock_twitter_account(:save => false))
        post :create, :twitter_account => {:these => 'params'}
        assigns[:twitter_account].should equal(mock_twitter_account)
      end

      it "re-renders the 'new' template" do
        TwitterAccount.stub!(:new).and_return(mock_twitter_account(:save => false))
        post :create, :twitter_account => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested twitter_account" do
        TwitterAccount.should_receive(:find).with("37").and_return(mock_twitter_account)
        mock_twitter_account.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :twitter_account => {:these => 'params'}
      end

      it "assigns the requested twitter_account as @twitter_account" do
        TwitterAccount.stub!(:find).and_return(mock_twitter_account(:update_attributes => true))
        put :update, :id => "1"
        assigns[:twitter_account].should equal(mock_twitter_account)
      end

      it "redirects to the twitter_account" do
        TwitterAccount.stub!(:find).and_return(mock_twitter_account(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(twitter_account_url(mock_twitter_account))
      end
    end

    describe "with invalid params" do
      it "updates the requested twitter_account" do
        TwitterAccount.should_receive(:find).with("37").and_return(mock_twitter_account)
        mock_twitter_account.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :twitter_account => {:these => 'params'}
      end

      it "assigns the twitter_account as @twitter_account" do
        TwitterAccount.stub!(:find).and_return(mock_twitter_account(:update_attributes => false))
        put :update, :id => "1"
        assigns[:twitter_account].should equal(mock_twitter_account)
      end

      it "re-renders the 'edit' template" do
        TwitterAccount.stub!(:find).and_return(mock_twitter_account(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested twitter_account" do
      TwitterAccount.should_receive(:find).with("37").and_return(mock_twitter_account)
      mock_twitter_account.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the twitter_accounts list" do
      TwitterAccount.stub!(:find).and_return(mock_twitter_account(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(twitter_accounts_url)
    end
  end

end
