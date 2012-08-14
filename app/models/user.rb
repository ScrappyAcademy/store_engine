class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :salt

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX}
  validates :password, presence: true
  validates :salt, presence: true 
end
