require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe MymessagesController do

  def mock_mymessage(stubs={})
    @mock_mymessage ||= mock_model(Mymessage, stubs)
  end

  describe "GET index" do
    it "assigns all mymessages as @mymessages" do
      Mymessage.stub!(:find).with(:all).and_return([mock_mymessage])
      get :index
      assigns[:mymessages].should == [mock_mymessage]
    end
  end

  describe "GET show" do
    it "assigns the requested mymessage as @mymessage" do
      Mymessage.stub!(:find).with("37").and_return(mock_mymessage)
      get :show, :id => "37"
      assigns[:mymessage].should equal(mock_mymessage)
    end
  end

  describe "GET new" do
    it "assigns a new mymessage as @mymessage" do
      Mymessage.stub!(:new).and_return(mock_mymessage)
      get :new
      assigns[:mymessage].should equal(mock_mymessage)
    end
  end

  describe "GET edit" do
    it "assigns the requested mymessage as @mymessage" do
      Mymessage.stub!(:find).with("37").and_return(mock_mymessage)
      get :edit, :id => "37"
      assigns[:mymessage].should equal(mock_mymessage)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created mymessage as @mymessage" do
        Mymessage.stub!(:new).with({'these' => 'params'}).and_return(mock_mymessage(:save => true))
        post :create, :mymessage => {:these => 'params'}
        assigns[:mymessage].should equal(mock_mymessage)
      end

      it "redirects to the created mymessage" do
        Mymessage.stub!(:new).and_return(mock_mymessage(:save => true))
        post :create, :mymessage => {}
        response.should redirect_to(mymessage_url(mock_mymessage))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mymessage as @mymessage" do
        Mymessage.stub!(:new).with({'these' => 'params'}).and_return(mock_mymessage(:save => false))
        post :create, :mymessage => {:these => 'params'}
        assigns[:mymessage].should equal(mock_mymessage)
      end

      it "re-renders the 'new' template" do
        Mymessage.stub!(:new).and_return(mock_mymessage(:save => false))
        post :create, :mymessage => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested mymessage" do
        Mymessage.should_receive(:find).with("37").and_return(mock_mymessage)
        mock_mymessage.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :mymessage => {:these => 'params'}
      end

      it "assigns the requested mymessage as @mymessage" do
        Mymessage.stub!(:find).and_return(mock_mymessage(:update_attributes => true))
        put :update, :id => "1"
        assigns[:mymessage].should equal(mock_mymessage)
      end

      it "redirects to the mymessage" do
        Mymessage.stub!(:find).and_return(mock_mymessage(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(mymessage_url(mock_mymessage))
      end
    end

    describe "with invalid params" do
      it "updates the requested mymessage" do
        Mymessage.should_receive(:find).with("37").and_return(mock_mymessage)
        mock_mymessage.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :mymessage => {:these => 'params'}
      end

      it "assigns the mymessage as @mymessage" do
        Mymessage.stub!(:find).and_return(mock_mymessage(:update_attributes => false))
        put :update, :id => "1"
        assigns[:mymessage].should equal(mock_mymessage)
      end

      it "re-renders the 'edit' template" do
        Mymessage.stub!(:find).and_return(mock_mymessage(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested mymessage" do
      Mymessage.should_receive(:find).with("37").and_return(mock_mymessage)
      mock_mymessage.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the mymessages list" do
      Mymessage.stub!(:find).and_return(mock_mymessage(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(mymessages_url)
    end
  end

end
