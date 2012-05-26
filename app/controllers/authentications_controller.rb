#encoding:UTF-8
class AuthenticationsController < ApplicationController
  
  def index
    @authentications = current_user.authentications if current_user
  end
  
  def create
    render :text => request.env['omniauth.auth'].to_yaml
#    auth = request.env["omniauth.auth"] 
#    current_user.authentications.create(:provider => auth['provider'], :uid => auth['uid'])
#    flash[:notice] = "Authentication successful."
#    redirect_to authentications_url    
  end
end
