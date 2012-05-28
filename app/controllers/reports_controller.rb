#encoding:UTF-8
class ReportsController < ApplicationController
  layout 'testing'
  def index
    if params[:period] == "Неделя"
      render 'week'      
    elsif params[:period] == "Месяц"
      render 'month'
    elsif params[:period] == "Полгода"
      render 'ye'
    elsif params[:period] == "Год"
      render 'year'            
    end
  end
  
end
