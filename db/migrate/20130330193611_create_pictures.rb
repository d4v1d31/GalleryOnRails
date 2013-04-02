class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :description
      t.string :path

      t.timestamps
    end
  end
end
