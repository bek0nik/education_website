#encoding:UTF-8
class Speciality < ActiveRecord::Base
  has_many :categorizations
  belongs_to :category
  has_many :universities, :through => :categorizations, :uniq => true
  validates :name, :cipher, :presence => true, :uniqueness => {:case_sensitive => false }
  scope :ascname, order('name ASC')
  #translations
  translates :name, :description
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
