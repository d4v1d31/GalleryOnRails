class AddAlbumhumbnailToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :albumthumbnail, :string
  end
end
