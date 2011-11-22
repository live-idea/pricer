# -*- encoding : utf-8 -*-
class TagsController < ApplicationController
  def autocomplete
    q = "%#{params[:term]}%"


    @tags = ActsAsTaggableOn::Tag.includes(:taggings).where("taggings.tagger_id = ? and taggings.context = ?", 
    params[:category], params[:context]).where("name like ?", q)

    respond_to do |format|
        format.js do
          render :inline => @tags.to_json
        end
     end
  end
end
