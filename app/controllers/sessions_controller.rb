#encoding:UTF-8
class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully"
      redirect_to root_path
    else
      flash.now.alert = "Email or password invalid"
      render 'new'      
    end    
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path    
  end
end
