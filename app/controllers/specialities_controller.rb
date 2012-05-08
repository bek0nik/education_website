#encoding:UTF-8
class SpecialitiesController < ApplicationController
  respond_to :html
  helper_method :sort_column, :sort_direction
  def index
    @specialities = Speciality.search(params[:search]).order(sort_column + " " + sort_direction).page(params[:page]).per(5)   
  end
  
  def show
    @speciality = Speciality.find(params[:id])
    @universities = @speciality.university_ids
    @university = University.where(:id => @universities) 
  end
  
  private
  
  def sort_column
    Speciality.column_names.include?(params[:sort]) ? params[:sort] : "id"    
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"    
  end
end
