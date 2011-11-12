class Product < ActiveRecord::Base
  has_attached_file :image , :styles => {:thumb => '100x100#' , :big => '800x800>'}
  acts_as_taggable_on :categories
end
