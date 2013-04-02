class RemoveThumbnailFromAlbum < ActiveRecord::Migration
  def up
    remove_column :albums, :thumbnail
  end

  def down
    add_column :albums, :thumbnail, :string
  end
end
