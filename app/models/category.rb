class Category < ActiveRecord::Base
  has_many :params

  has_many :products

  acts_as_tagger

end
