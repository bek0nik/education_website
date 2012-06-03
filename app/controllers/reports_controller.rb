#encoding:UTF-8
class ReportsController < ApplicationController
  layout 'testing'
  def index
    if params[:period] == "Неделя"
      Report.return_discipline(params[:discipline][:test_name_id])
      Report.find_user(current_user)
      render 'week'      
    elsif params[:period] == "Месяц"
      Report.return_discipline(params[:discipline][:test_name_id])
      render 'month'
    elsif params[:period] == "Полгода"
      Report.return_discipline(params[:discipline][:test_name_id])
      render 'ye'
    elsif params[:period] == "Год"
      Report.return_discipline(params[:discipline][:test_name_id])
      render 'year'            
    end
  end
  
end
