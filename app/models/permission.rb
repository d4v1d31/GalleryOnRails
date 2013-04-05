class Permission < ActiveRecord::Base
  attr_accessible :name, :value
  has_many :permission_assignments
end
