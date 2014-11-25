class RenameGalleryIdIdToGalleryId < ActiveRecord::Migration
  def change
    remove_column :images, :gallery_id_id
    add_column :images, :gallery_id, :integer
    add_index :images, :gallery_id
  end
end
