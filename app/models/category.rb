class Category < ActiveRecord::Base
  belongs_to :categorygroup
  has_many :products
  has_and_belongs_to_many :tag_groups
end
