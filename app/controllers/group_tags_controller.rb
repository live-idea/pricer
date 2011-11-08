class GroupTagsController < ApplicationController
  # GET /group_tags
  # GET /group_tags.json
  def index
    @group_tags = GroupTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @group_tags }
    end
  end

  # GET /group_tags/1
  # GET /group_tags/1.json
  def show
    @group_tag = GroupTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_tag }
    end
  end

  # GET /group_tags/new
  # GET /group_tags/new.json
  def new
    @group_tag = GroupTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group_tag }
    end
  end

  # GET /group_tags/1/edit
  def edit
    @group_tag = GroupTag.find(params[:id])
  end

  # POST /group_tags
  # POST /group_tags.json
  def create
    @group_tag = GroupTag.new(params[:group_tag])

    respond_to do |format|
      if @group_tag.save
        format.html { redirect_to @group_tag, notice: 'Group tag was successfully created.' }
        format.json { render json: @group_tag, status: :created, location: @group_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @group_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /group_tags/1
  # PUT /group_tags/1.json
  def update
    @group_tag = GroupTag.find(params[:id])

    respond_to do |format|
      if @group_tag.update_attributes(params[:group_tag])
        format.html { redirect_to @group_tag, notice: 'Group tag was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @group_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_tags/1
  # DELETE /group_tags/1.json
  def destroy
    @group_tag = GroupTag.find(params[:id])
    @group_tag.destroy

    respond_to do |format|
      format.html { redirect_to group_tags_url }
      format.json { head :ok }
    end
  end
end
