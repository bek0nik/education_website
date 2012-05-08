#encoding:UTF-8
class Admin::CommentsController < ApplicationController
  respond_to :html
  layout 'admin'
  
  def index
    @comments = Comment.for_admin    
  end
  
  def edit
    @comment = Comment.find(params[:id])    
  end
  
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Комментраий удален!"
      respond_with(@comment, location: admin_comments_path)
    end    
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to admin_comments_path
    flash[:notice] = "Комментраий удален!"    
  end
  
end
