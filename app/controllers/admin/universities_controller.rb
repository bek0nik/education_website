#encoding:UTF-8
class Admin::UniversitiesController < ApplicationController
  respond_to :html
  layout 'admin'
  
  def index
    @universities = University.all    
  end
  
  def new
    @university = University.new    
  end
  
  def create
    @university = University.new(params[:university])
    if @university.save
      flash[:notice] = "ВУЗ сохранен"
      respond_with(@university, :location => admin_universities_path)
    else  
      render 'new'      
    end
  end
  
  def edit
    @university = University.find(params[:id])    
  end
  
  def update
    @university = University.find(params[:id])
    if @university.update_attributes
      flash[:notice] = "Successfully"
      respond_with(@university, :location => admin_universities_path)
    else  
      render 'edit'
      flash[:alert] = "Error"
    end    
  end
  
  def destroy
    @university = University.find(params[:id])
    @university.destroy
    flash[:notice] = "Successfully"
    redirect_to admin_universities_path
  end
  
end
