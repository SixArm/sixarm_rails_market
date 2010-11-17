class ShopkeepersController < ApplicationController
  # GET /shopkeepers
  # GET /shopkeepers.xml
  def index
    @shopkeepers = Shopkeeper.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shopkeepers }
    end
  end

  # GET /shopkeepers/1
  # GET /shopkeepers/1.xml
  def show
    @shopkeeper = Shopkeeper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shopkeeper }
    end
  end

  # GET /shopkeepers/new
  # GET /shopkeepers/new.xml
  def new
    @shopkeeper = Shopkeeper.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shopkeeper }
    end
  end

  # GET /shopkeepers/1/edit
  def edit
    @shopkeeper = Shopkeeper.find(params[:id])
  end

  # POST /shopkeepers
  # POST /shopkeepers.xml
  def create
    @shopkeeper = Shopkeeper.new(params[:shopkeeper])

    respond_to do |format|
      if @shopkeeper.save
        format.html { redirect_to(@shopkeeper, :notice => 'Shopkeeper was successfully created.') }
        format.xml  { render :xml => @shopkeeper, :status => :created, :location => @shopkeeper }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shopkeeper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shopkeepers/1
  # PUT /shopkeepers/1.xml
  def update
    @shopkeeper = Shopkeeper.find(params[:id])

    respond_to do |format|
      if @shopkeeper.update_attributes(params[:shopkeeper])
        format.html { redirect_to(@shopkeeper, :notice => 'Shopkeeper was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shopkeeper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shopkeepers/1
  # DELETE /shopkeepers/1.xml
  def destroy
    @shopkeeper = Shopkeeper.find(params[:id])
    @shopkeeper.destroy

    respond_to do |format|
      format.html { redirect_to(shopkeepers_url) }
      format.xml  { head :ok }
    end
  end
end
