#encoding:UTF-8
class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessor :email, :password, :password_confirmation
  
  validates :email, :uniqueness
end
