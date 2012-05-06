# encoding:UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  helper_method :redirect_to 
  helper_method :current_user
  private
  
  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?    
  end
  
  def default_url_options(options = {})
    {:locale => I18n.locale}    
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]    
  end
  
    
  def all_deny
    if current_user
      unless User.admin(current_user)
        redirect_to root_path
        flash[:error] = "Запрещено!"
      end
    else  
      redirect_to root_path      
    end     
  end
  
  
  def authorize
  
  end
end
