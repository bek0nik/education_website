#encoding:UTF-8
class Admin::SpecialitiesController < ApplicationController
  layout 'admin'
  respond_to :html
  
  def index
    @specialities = Speciality.all    
  end
  
  def new
    @speciality = Speciality.new
  end
  
  def edit
    @speciality = Speciality.find(params[:id])
  end
  
  def create
    @speciality = Speciality.new(params[:speciality])
    if @speciality.save
      flash[:notice] = "Специальность создана!"
      respond_with(@speciality, location: admin_specialities_path)
    else
      render 'new'
    end
  end
  
  def update
    @speciality = Speciality.find(params[:id])
    if @speciality.update_attributes(params[:speciality])
      flash[:notice] = "Специальность обновлена!"
      respond_with(@speciality, :location => admin_specialities_path)
    else
      render 'edit'      
    end
  end
  
  def destroy
    @speciality = Speciality.find(params[:id])
    @speciality.destroy
    flash[:notice] = "Специальность удалена!"
    redirect_to admin_specialities_path    
  end
end
