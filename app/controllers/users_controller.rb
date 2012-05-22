#encoding:UTF-8
class UsersController < ApplicationController
  respond_to :html
  layout 'testing', only: :show
  def new
    @user = User.new    
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Регистрация завершена"
      redirect_to root_path
    else
      flash[:notice] = "Ошибка!"
      render 'new'      
    end    
  end
  
  def show
    @user = User.find(current_user.id)    
  end
end
