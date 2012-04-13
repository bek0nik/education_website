#encoding:UTF-8
class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :email, :password, :password_confirmation
  
  validates :email, :uniqueness => { :case_sensitive => false}
  validates :password_confirmation, :presence => true
end
