class RenameProductIdIdToProductIdFromTableGallery < ActiveRecord::Migration
  def change
    remove_column :galleries, :product_id_id
    add_column :galleries, :product_id, :integer
    add_index :galleries, :product_id
  end
end
