class CategorygroupsController < ApplicationController
  # GET /categorygroups
  # GET /categorygroups.json
  def index
    @categorygroups = Categorygroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categorygroups }
    end
  end

  # GET /categorygroups/1
  # GET /categorygroups/1.json
  def show
    @categorygroup = Categorygroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categorygroup }
    end
  end

  # GET /categorygroups/new
  # GET /categorygroups/new.json
  def new
    @categorygroup = Categorygroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categorygroup }
    end
  end

  # GET /categorygroups/1/edit
  def edit
    @categorygroup = Categorygroup.find(params[:id])
  end

  # POST /categorygroups
  # POST /categorygroups.json
  def create
    @categorygroup = Categorygroup.new(params[:categorygroup])

    respond_to do |format|
      if @categorygroup.save
        format.html { redirect_to @categorygroup, notice: 'Categorygroup was successfully created.' }
        format.json { render json: @categorygroup, status: :created, location: @categorygroup }
      else
        format.html { render action: "new" }
        format.json { render json: @categorygroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categorygroups/1
  # PUT /categorygroups/1.json
  def update
    @categorygroup = Categorygroup.find(params[:id])

    respond_to do |format|
      if @categorygroup.update_attributes(params[:categorygroup])
        format.html { redirect_to @categorygroup, notice: 'Categorygroup was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @categorygroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorygroups/1
  # DELETE /categorygroups/1.json
  def destroy
    @categorygroup = Categorygroup.find(params[:id])
    @categorygroup.destroy

    respond_to do |format|
      format.html { redirect_to categorygroups_url }
      format.json { head :ok }
    end
  end
end
