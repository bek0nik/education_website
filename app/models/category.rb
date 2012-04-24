#encoding:UTF-8
class Category < ActiveRecord::Base
  has_many :specialities
  has_many :universities
  
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
