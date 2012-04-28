module ApplicationHelper
  
  def edit_icon
    raw("<i class='icon-pencil'></i>")
  end
  
  def delete_icon
    raw("<i class='icon-trash'></i>")    
  end
  
  def user_has?
    if User.find_by_id(session[:user_id])
      true
    else
      false
    end    
  end
end
