#encoding:UTF-8
class UsersController < ApplicationController
  respond_to :html
  
  def new
    @user = User.new    
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Регистрация завершена"
      respond_with root_path
    else
      flash[:notice] = "error"
      render 'new'      
    end    
  end
end
