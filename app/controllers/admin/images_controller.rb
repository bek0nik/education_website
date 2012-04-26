class Admin::ImagesController < ApplicationController
  before_filter :find_univer
  before_filter :find_or_build_photo
  layout 'admin'  
  def create
    respond_to do |f|
      unless @photo.save
        flash[:error] = "NO"
      end
      f.js do
        render text: render_to_string(partial: 'images/photo', locals: { photo: @photo})
      end    
    end 
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
