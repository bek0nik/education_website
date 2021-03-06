#encoding:UTF-8
class Admin::UniversitiesController < ApplicationController
  before_filter :all_deny
  layout 'admin'
  respond_to :html
  def index
    @universities = University.all   
  end
  
  def show
    @university = University.find(params[:id])    
  end
  
  def new
    @university = University.new    
  end
  
  def create
    @university = University.new(params[:university])
    if @university.save
      flash[:notice] = "ВУЗ сохранен!"
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
    if @university.update_attributes(params[:university])
      flash[:notice] = "ВУЗ обновлен!"
      respond_with(@university, :location => admin_universities_path)
    else  
      render 'edit'
      flash[:alert] = "Ошбка!"
    end    
  end
  
  def destroy
    @university = University.find(params[:id])
    @university.destroy
    flash[:notice] = "ВУЗ удален!"
    redirect_to admin_universities_path
  end
  
  def add_img
    @university = University.find(params[:id])    
  end
  
end
