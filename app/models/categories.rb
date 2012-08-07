class Categories < ActiveRecord::Base
  attr_accessible :name

  has_many :categorization, dependent: :destroy
  has_many :products, through: :categorization

  def to_s
    name
  end
end