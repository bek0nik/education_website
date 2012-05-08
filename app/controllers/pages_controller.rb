#encoding:UTF-8
class PagesController < ApplicationController
  def index
    @title = "Главная"
    @popular = University.limit(10)
  end
  
  def about
    @title = "О проекте" 
  end
  
  def contact
    @title = "Контакты"    
  end
end
