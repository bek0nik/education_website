class Image < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :university, :dependent => :destroy
  scope :logotip, where(:logo => true)
  #translations
  translates :description
end
