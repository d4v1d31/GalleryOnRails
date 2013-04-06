class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  has_many :permission_assignments
  has_many :permissions, through: :permission_assignments

  def admin?
  	return permissions.where(value: "admin").any?
  end

  def edit_permission?(album)
  	if (album == "any")

  	end
  end
end
