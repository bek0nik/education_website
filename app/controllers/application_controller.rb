class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale 
  
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
  
  helper_method :current_user
  
  def authorize
  
  end
end
