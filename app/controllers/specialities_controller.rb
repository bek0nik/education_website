#encoding:UTF-8
class SpecialitiesController < ApplicationController
  respond_to :html
  
  def index
    @specialities = Speciality.ascname   
  end
  
  def show
    @speciality = Speciality.find(params[:id])
    @universities = @speciality.university_ids
    @university = University.where(:id => @universities) 
  end
end
