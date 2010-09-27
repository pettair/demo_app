class FutyisController < ApplicationController
  # GET /futyis
  # GET /futyis.xml
  def index
    @futyis = Futyi.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @futyis }
    end
  end

  # GET /futyis/1
  # GET /futyis/1.xml
  def show
    @futyi = Futyi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @futyi }
    end
  end

  # GET /futyis/new
  # GET /futyis/new.xml
  def new
    @futyi = Futyi.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @futyi }
    end
  end

  # GET /futyis/1/edit
  def edit
    @futyi = Futyi.find(params[:id])
  end

  # POST /futyis
  # POST /futyis.xml
  def create
    @futyi = Futyi.new(params[:futyi])

    respond_to do |format|
      if @futyi.save
        format.html { redirect_to(@futyi, :notice => 'Futyi was successfully created.') }
        format.xml  { render :xml => @futyi, :status => :created, :location => @futyi }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @futyi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /futyis/1
  # PUT /futyis/1.xml
  def update
    @futyi = Futyi.find(params[:id])

    respond_to do |format|
      if @futyi.update_attributes(params[:futyi])
        format.html { redirect_to(@futyi, :notice => 'Futyi was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @futyi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /futyis/1
  # DELETE /futyis/1.xml
  def destroy
    @futyi = Futyi.find(params[:id])
    @futyi.destroy

    respond_to do |format|
      format.html { redirect_to(futyis_url) }
      format.xml  { head :ok }
    end
  end
end
