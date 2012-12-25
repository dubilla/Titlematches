class User < ActiveRecord::Base
  attr_accessible :name, :display_name, :password, :password_confirmation
  has_many :titles
  has_many :titlematches

  validates :name, presence: true, uniqueness: true
  has_secure_password
end