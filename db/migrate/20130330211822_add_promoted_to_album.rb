class AddPromotedToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :promoted, :boolean
  end
end
