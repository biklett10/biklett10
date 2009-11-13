class TwitterAccountsController < ApplicationController

  # bikle 2009-11-12
  # Use call to method in model to call twitter API to see my friends (those who I am following)
  def query_friends
    @twitter_account = TwitterAccount.find(params[:id])
    @friends = @twitter_account.query_friends # Gives me array of strings (twitter screen names)
  end # query_friends

  # Use call to method in model to call twitter API to see who is following me
  def query_followers
    @twitter_account = TwitterAccount.find(params[:id])
    @followers = @twitter_account.query_followers # Gives me array of strings (twitter screen names)
  end # query_followers
  # bikle 2009-11-12

  # GET /twitter_accounts
  # GET /twitter_accounts.xml
  def index
    @twitter_accounts = TwitterAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @twitter_accounts }
    end
  end

  # GET /twitter_accounts/1
  # GET /twitter_accounts/1.xml
  def show
    @twitter_account = TwitterAccount.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @twitter_account }
    end
  end

  # GET /twitter_accounts/new
  # GET /twitter_accounts/new.xml
  def new
    @twitter_account = TwitterAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @twitter_account }
    end
  end

  # GET /twitter_accounts/1/edit
  def edit
    @twitter_account = TwitterAccount.find(params[:id])
  end

  # POST /twitter_accounts
  # POST /twitter_accounts.xml
  def create
    @twitter_account = TwitterAccount.new(params[:twitter_account])

    respond_to do |format|
      if @twitter_account.save
        flash[:notice] = 'TwitterAccount was successfully created.'
        format.html { redirect_to(@twitter_account) }
        format.xml  { render :xml => @twitter_account, :status => :created, :location => @twitter_account }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @twitter_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /twitter_accounts/1
  # PUT /twitter_accounts/1.xml
  def update
    @twitter_account = TwitterAccount.find(params[:id])

    respond_to do |format|
      if @twitter_account.update_attributes(params[:twitter_account])
        flash[:notice] = 'TwitterAccount was successfully updated.'
        format.html { redirect_to(@twitter_account) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @twitter_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /twitter_accounts/1
  # DELETE /twitter_accounts/1.xml
  def destroy
    @twitter_account = TwitterAccount.find(params[:id])
    @twitter_account.destroy

    respond_to do |format|
      format.html { redirect_to(twitter_accounts_url) }
      format.xml  { head :ok }
    end
  end
end
