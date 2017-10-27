class Photo < ApplicationRecord
  belongs_to :place
  
  mount_uploader :picture, PictureUploader
  
  def new
    @photo = Photo.new
  end

end