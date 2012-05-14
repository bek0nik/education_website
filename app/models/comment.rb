#encoding:UTF-8
class Comment < ActiveRecord::Base
  belongs_to :university
  belongs_to :user
  default_scope order('created_at ASC')
  scope :for_admin, order("updated_at DESC")
  scope :last, reorder("updated_at DESC")
end
