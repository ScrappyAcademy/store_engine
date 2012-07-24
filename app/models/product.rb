class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title
  validates :title, presence: true, length: {minimum: 3} , uniqueness: true 
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.0 }
end
