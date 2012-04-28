#encoding:UTF-8
class UniversitiesController < ApplicationController

  def index
    @title = "Университеты"
    @universities = University.all
    @img = Image.first
  end
  
  def show
    @university = University.find(params[:id])
    @comment = Comment.new
    @img = @university.images.all    
  end
end
