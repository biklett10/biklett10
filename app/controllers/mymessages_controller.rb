class MymessagesController < ApplicationController
  # GET /mymessages
  # GET /mymessages.xml
  def index
    @mymessages = Mymessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mymessages }
    end
  end

  # GET /mymessages/1
  # GET /mymessages/1.xml
  def show
    @mymessage = Mymessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mymessage }
    end
  end

  # GET /mymessages/new
  # GET /mymessages/new.xml
  def new
    @mymessage = Mymessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mymessage }
    end
  end

  # GET /mymessages/1/edit
  def edit
    @mymessage = Mymessage.find(params[:id])
  end

  # POST /mymessages
  # POST /mymessages.xml
  def create
    @mymessage = Mymessage.new(params[:mymessage])

    respond_to do |format|
      if @mymessage.save
        flash[:notice] = 'Mymessage was successfully created.'
        format.html { redirect_to(@mymessage) }
        format.xml  { render :xml => @mymessage, :status => :created, :location => @mymessage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mymessage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mymessages/1
  # PUT /mymessages/1.xml
  def update
    @mymessage = Mymessage.find(params[:id])

    respond_to do |format|
      if @mymessage.update_attributes(params[:mymessage])
        flash[:notice] = 'Mymessage was successfully updated.'
        format.html { redirect_to(@mymessage) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mymessage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mymessages/1
  # DELETE /mymessages/1.xml
  def destroy
    @mymessage = Mymessage.find(params[:id])
    @mymessage.destroy

    respond_to do |format|
      format.html { redirect_to(mymessages_url) }
      format.xml  { head :ok }
    end
  end
end
