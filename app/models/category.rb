class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :categorizations 
  has_many :products, through: :categorizations 
  validates :name, presence: true, length: {minimum: 4, maximum: 20} , uniqueness: true 

	def to_s
		name
	end
end
