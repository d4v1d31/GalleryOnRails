class Picture < ActiveRecord::Base
  attr_accessible :description, :path, :image
  belongs_to :album
  mount_uploader :image, ImageUploader
end
