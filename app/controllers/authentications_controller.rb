#encoding:UTF-8
class AuthenticationsController < ApplicationController
  
  def index
    @authentications = current_user.authentications if current_user
  end
  
  def create
    auth = request.env["omniauth.auth"] 
    current_user.authentications.create(:provider => auth['provider'], :uid => auth['uid'])
    flash[:notice] = "Authentication successful."
    redirect_to authentications_url    
  end
end
