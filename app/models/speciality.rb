#encoding:UTF-8
class Speciality < ActiveRecord::Base
  has_many :categorizations
  belongs_to :category
  has_many :universities, :through => :categorizations, :uniq => true
  scope :ascname, order('name ASC')
  def button_value
    if new_record?
      "Добавить"
    else
      "Изменить"      
    end    
  end
  
  def legend_value
    if new_record?
      "Добавление"
    else
      "Изменение"      
    end    
  end
end
