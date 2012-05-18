#encoding:UTF-8
class Authentication < ActiveRecord::Base
  belongs_to :user
end
