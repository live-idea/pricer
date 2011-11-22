class CategoryGroupsController < ApplicationController
  # GET /category_groups
  # GET /category_groups.json
  def index
    @category_groups = CategoryGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category_groups }
    end
  end

  # GET /category_groups/1
  # GET /category_groups/1.json
  def show
    @category_group = CategoryGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category_group }
    end
  end

  # GET /category_groups/new
  # GET /category_groups/new.json
  def new
    @category_group = CategoryGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category_group }
    end
  end

  # GET /category_groups/1/edit
  def edit
    @category_group = CategoryGroup.find(params[:id])
  end

  # POST /category_groups
  # POST /category_groups.json
  def create
    @category_group = CategoryGroup.new(params[:category_group])

    respond_to do |format|
      if @category_group.save
        format.html { redirect_to @category_group, notice: 'Category group was successfully created.' }
        format.json { render json: @category_group, status: :created, location: @category_group }
      else
        format.html { render action: "new" }
        format.json { render json: @category_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /category_groups/1
  # PUT /category_groups/1.json
  def update
    @category_group = CategoryGroup.find(params[:id])

    respond_to do |format|
      if @category_group.update_attributes(params[:category_group])
        format.html { redirect_to @category_group, notice: 'Category group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @category_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_groups/1
  # DELETE /category_groups/1.json
  def destroy
    @category_group = CategoryGroup.find(params[:id])
    @category_group.destroy

    respond_to do |format|
      format.html { redirect_to category_groups_url }
      format.json { head :ok }
    end
  end
end
