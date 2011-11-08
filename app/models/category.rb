class Category < ActiveRecord::Base
  belongs_to :categorygroup
  has_many :products
  has_and_belongs_to_many :group_tags
end
