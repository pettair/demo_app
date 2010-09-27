class NorbiMelegsController < ApplicationController
  # GET /norbi_melegs
  # GET /norbi_melegs.xml
  def index
    @norbi_melegs = NorbiMeleg.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @norbi_melegs }
    end
  end

  # GET /norbi_melegs/1
  # GET /norbi_melegs/1.xml
  def show
    @norbi_meleg = NorbiMeleg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @norbi_meleg }
    end
  end

  # GET /norbi_melegs/new
  # GET /norbi_melegs/new.xml
  def new
    @norbi_meleg = NorbiMeleg.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @norbi_meleg }
    end
  end

  # GET /norbi_melegs/1/edit
  def edit
    @norbi_meleg = NorbiMeleg.find(params[:id])
  end

  # POST /norbi_melegs
  # POST /norbi_melegs.xml
  def create
    @norbi_meleg = NorbiMeleg.new(params[:norbi_meleg])

    respond_to do |format|
      if @norbi_meleg.save
        format.html { redirect_to(@norbi_meleg, :notice => 'Norbi meleg was successfully created.') }
        format.xml  { render :xml => @norbi_meleg, :status => :created, :location => @norbi_meleg }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @norbi_meleg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /norbi_melegs/1
  # PUT /norbi_melegs/1.xml
  def update
    @norbi_meleg = NorbiMeleg.find(params[:id])

    respond_to do |format|
      if @norbi_meleg.update_attributes(params[:norbi_meleg])
        format.html { redirect_to(@norbi_meleg, :notice => 'Norbi meleg was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @norbi_meleg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /norbi_melegs/1
  # DELETE /norbi_melegs/1.xml
  def destroy
    @norbi_meleg = NorbiMeleg.find(params[:id])
    @norbi_meleg.destroy

    respond_to do |format|
      format.html { redirect_to(norbi_melegs_url) }
      format.xml  { head :ok }
    end
  end
end
