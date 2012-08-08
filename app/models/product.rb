class Product < ActiveRecord::Base
  attr_accessible :description, :price, :title, :retired
  attr_accessible :category_list
  validates :title, presence: true, length: {minimum: 3} , uniqueness: true 
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.0 }
  validates :description, presence:true, length: {minimum: 1}

  scope :retired, where(:retired => true)

  has_many :categorizations 

  has_many :categories, through: :categorizations 

  def category_list 
    return self.categories.join(", ")
  end

  def category_list=(categories_string)
    categorizations.destroy_all
    category_names = categories_string.split(",").collect{|s| s.strip.downcase}.uniq

    category_names.each do |category_name|
      category = Category.find_or_create_by_name(category_name)
      categorizations = self.categorizations.new
      categorizations.category_id = category.id
    end 
  end




  




end
