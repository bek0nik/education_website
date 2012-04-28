#encoding:UTF-8
class University < ActiveRecord::Base
  has_many :categorizations
  has_many :specialities, :through => :categorizations, :uniq => true
  has_many :images, dependent: :destroy
  has_many :comments, :dependent => :destroy
  accepts_nested_attributes_for :images
  validates :name, presence: true
  validates :description, :presence => true
  
  def button_value
    if new_record?
      'Добавить'
    else
      'Изменить'      
    end
  end
  
  def legend_value
    if new_record?
      'Добавление'
    else
      'Редактирование'
    end
    
  end
end
