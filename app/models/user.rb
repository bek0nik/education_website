#encoding:UTF-8
class User < ActiveRecord::Base
  has_many :authentications
  has_many :comments, :dependent => :destroy
  has_secure_password
  #rater
  ajaxful_rater
  
  attr_accessible :email, :password, :password_confirmation, :role, :lastname, :birth, :firstname
  
  validates :email, :uniqueness => { :case_sensitive => false}
  validates :password_confirmation, :presence => true
  
  def self.admin(user)
    if user.role == true
      true
    else
      false
    end
  end
end
