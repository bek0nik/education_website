#encoding:UTF-8
class UniversitiesController < ApplicationController

  def index
    @title = "Университеты"
    @universities = University.all
  end
  
  def show
    @university = University.find(params[:id])
    @img = @university.images.all    
  end
end
