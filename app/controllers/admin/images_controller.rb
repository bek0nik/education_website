#encoding : utf-8
class Admin::ImagesController < ApplicationController
  before_filter :find_univer
  before_filter :find_or_build_photo
  layout 'admin'  
  def create
    respond_to do |f|
      unless @image.save
        flash[:error] = "NO"
      end
      f.js do
        render :text => render_to_string(partial: 'admin/images/photo', :locals => { image: @image})
      end    
    end 
  end
  def destroy
    respond_to do |f|
      unless @image.destroy
        flash[:error] = "К сожалению, изображение не удалилось"
      end
      format.js
    end
  end

  private
    def find_univer
      @university = University.find(params[:university_id])
      raise ActiveRecord::RecordNotFound unless @university
    end
    
    def find_or_build_photo
      @image = params[:id] ? @university.images.find(params[:id]) : @university.images.build(params[:image])
    end
end
