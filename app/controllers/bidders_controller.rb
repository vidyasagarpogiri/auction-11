class BiddersController < ApplicationController
	layout 'global'  
	# GET /bidders
  # GET /bidders.xml
  def index
    @bidders = Bidder.find(:all,:conditions => { :state => "CREATED"})

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bidders }
    end
  end

  # GET /bidders/1
  # GET /bidders/1.xml
  def show
    @bidder = Bidder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bidder }
    end
  end

  # GET /bidders/new
  # GET /bidders/new.xml
  def new
    @bidder = Bidder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bidder }
    end
  end

  # GET /bidders/1/edit
  def edit
    @bidder = Bidder.find(params[:id])
  end

  # POST /bidders
  # POST /bidders.xml
  def create
    @bidder = Bidder.new(params[:bidder])
		@bidder.create_date=Time.now
		@bidder.modified_date=Time.now
		@bidder.state='CREATED'

    respond_to do |format|
      if @bidder.save
        flash[:notice] = 'Bidder was successfully created.'
        format.html { redirect_to(@bidder) }
        format.xml  { render :xml => @bidder, :status => :created, :location => @bidder }
				format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bidder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bidders/1
  # PUT /bidders/1.xml
  def update
    @bidder = Bidder.find(params[:id])

    respond_to do |format|
      if @bidder.update_attributes(params[:bidder])
        flash[:notice] = 'Bidder was successfully updated.'
        format.html { redirect_to(@bidder) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bidder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bidders/1
  # DELETE /bidders/1.xml
  def destroy
    @bidder = Bidder.find(params[:id])
    @bidder.modified_date=Time.now
		@bidder.state='DELETED'

   respond_to do |format|
      if @bidder.update_attributes(params[:bidder])
        flash[:notice] = 'Bidder was deleted.'
        format.html { redirect_to(bidders_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bidder.errors, :status => :unprocessable_entity }
      end
    end
  end
end
