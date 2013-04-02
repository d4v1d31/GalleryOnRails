class AddThumbnailToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :thumbnail, :string
  end
end
