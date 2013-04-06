class Album < ActiveRecord::Base
  attr_accessible :description, :name, :albumthumbnail, :promoted
  has_many :pictures
  mount_uploader :albumthumbnail, ImageUploader
  scope :promoted, where(promoted: true).first

  after_create :add_permissions

  def add_permissions
  	Permission.create(name: "Edit " + self.name, value: "edit_" + self.name)
  	Permission.create(name: "View " + self.name, value: "view_" + self.name)
  	Permission.create(name: "Change Users " + self.name, value: "chg_user_" + self.name)
  end

end
