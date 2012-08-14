class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  has_secure_password
  validates :email, presence: true
  validates :name, presence: true
  validates :password, presence: true
end
