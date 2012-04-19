#encoding:UTF-8
class Speciality < ActiveRecord::Base
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
