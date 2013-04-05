class Album < ActiveRecord::Base
  attr_accessible :description, :name, :albumthumbnail, :promoted
  has_many :pictures
  mount_uploader :albumthumbnail, ImageUploader
  scope :promoted, where(promoted: true).first
end
