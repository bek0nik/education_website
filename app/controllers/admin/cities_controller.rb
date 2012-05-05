#encoding:UTF-8
class Admin::CitiesController < ApplicationController
  respond_to :html
  layout 'admin'
  
  def index
    @cities = City.all    
  end
  
  def new
    @city = City.new
  end
  
  def edit
    @city = City.find(params[:id])    
  end
  
  def create
    @city = City.new(params[:city])
    if @city.save
      flash[:notice] = "Successfully"
      respond_with(@city, location: admin_cities_path)
    else  
      flash[:error] = "NO"
      render 'new'
    end
  end
  
  def update
    @city = City.find(params[:id])
    if @city.update_attributes(params[:city])
      flash[:notice] = "Successfully"      
      respond_with(@city, location: admin_cities_path)
    else
      flash[:error] = "Successfully"
      render 'edit'
    end    
  end
  
  def destroy
    @city = City.find(params[:id])
    @city.destroy
    flash[:notice] = "Successfully"    
    redirect_to admin_cities_path
  end
end
