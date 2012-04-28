#encoding:UTF-8
class CommentsController < ApplicationController
  def new
    @comment = Comment.new    
  end
  
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to :back, :notice => "ОК"
    else
      redirect_to :back, :notice => 'NO'
    end    
  end
  
  def index
    @comment = @university.comments    
  end
end
