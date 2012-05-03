#encoding:UTF-8
class SpecialitiesController < ApplicationController
  repond_to :html
  
  def index
    @specialities = Speciality.all    
  end
  
  def show
    @speciality = Speciality.find(params[:id])    
  end
end
