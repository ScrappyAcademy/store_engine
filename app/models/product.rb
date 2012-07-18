class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title
  validates :title, presence: true, length: {minimum: 3} , uniqueness: true 
end
