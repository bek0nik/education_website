#encoding:UTF-8
class Admin::CategoriesController < ApplicationController
  respond_to :html
  layout 'admin'
  
  def index
    @categories = Category.all    
  end
  
  def new
    @category = Category.new  
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Successfully"
      respond_with(@category, location: admin_categories_path)
    else  
      flash[:error] = "NO!"
      render 'new'
    end
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = "Successfully"
      respond_with(@category, :location => admin_categories_path)
    else
      flash[:error] = "NO!"
      render 'edit'
    end
    
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "Successfully"
    redirect_to admin_categories_path
  end
end
