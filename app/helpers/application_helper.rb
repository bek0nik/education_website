module ApplicationHelper
  
  def edit_icon
    raw("<i class='icon-pencil'></i>")
  end
  
  def delete_icon
    raw("<i class='icon-trash'></i>")    
  end
  
  def error_messages_for(object)
    render(:partial => "admin/shared/error_messages", :locals => {:object => object})
  end
  
  def to_datetime(object)
    object.strftime('%d.%m.%Y %H:%M')
  end
  
  def flash_msg(object)
    render(:partial => "admin/shared/flashmsg", :locals => {:object => object})
  end
  
  def user_has?
    if User.find_by_id(session[:user_id])
      true
    else
      false
    end    
  end
end
