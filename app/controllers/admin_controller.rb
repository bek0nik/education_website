# encoding:UTF-8
class AdminController < ApplicationController
  before_filter :all_deny 
  def index
    render :layout => 'admin'  
  end

end
