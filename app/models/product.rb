class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title, :retired
  validates :title, presence: true, length: {minimum: 3} , uniqueness: true 
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.0 }
  validates :description, presence:true, length: {minimum: 1}

  scope :retired, where(:retired => true)

  has_many :categorizations 
end
