#encoding:UTF-8
class University < ActiveRecord::Base
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
