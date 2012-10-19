class DonorsController < ApplicationController
	layout 'global'
  # GET /donors
  # GET /donors.xml
  def index
    @donors = Donor.find(:all,:conditions => { :state => "CREATED"})

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @donors }
    end
  end

  # GET /donors/1
  # GET /donors/1.xml
  def show
    @donor = Donor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @donor }
    end
  end

  # GET /donors/new
  # GET /donors/new.xml
  def new
    @donor = Donor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @donor }
    end
  end

  # GET /donors/1/edit
  def edit
    @donor = Donor.find(params[:id])
  end

  # POST /donors
  # POST /donors.xml
  def create
    @donor = Donor.new(params[:donor])
		@donor.create_date=Time.now
		@donor.modified_date=Time.now
		@donor.state='CREATED'

    respond_to do |format|
      if @donor.save
        flash[:notice] = 'Donor was successfully created.'
        format.html { redirect_to(@donor) }
        format.xml  { render :xml => @donor, :status => :created, :location => @donor }
				format.js 
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @donor.errors, :status => :unprocessable_entity }
				#TODO add error handling code for ajaxy requests				

      end
    end
  end

  # PUT /donors/1
  # PUT /donors/1.xml
  def update
    @donor = Donor.find(params[:id])

    respond_to do |format|
      if @donor.update_attributes(params[:donor])
        flash[:notice] = 'Donor was successfully updated.'
        format.html { redirect_to(@donor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @donor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /donors/1
  # DELETE /donors/1.xml
  def destroy
    @donor = Donor.find(params[:id])
    @donor.modified_date=Time.now
		@donor.state='DELETED'

    respond_to do |format|
      if @donor.update_attributes(params[:donor])
        flash[:notice] = 'Donor was deleted.'
        format.html { redirect_to(donors_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @donor.errors, :status => :unprocessable_entity }

      end
    end
  end
end
