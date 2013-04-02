class RemovePathFromPicture < ActiveRecord::Migration
  def up
    remove_column :pictures, :path
  end

  def down
    add_column :pictures, :path, :string
  end
end
