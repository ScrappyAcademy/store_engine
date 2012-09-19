class Categorization < ActiveRecord::Base
  attr_accessible :category
  belongs_to :category
  belongs_to :product
  
  validates_associated :category
end
