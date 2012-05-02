#encoding:UTF-8
class UniversitiesController < ApplicationController
  #layout('university', :only => :show)
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
  
  def rate
    @university = University.find(params[:id])
    @university.rate(params[:stars], current_user, params[:dimension])
    respond_to do |f|
      f.js    
    end    
  end
end
