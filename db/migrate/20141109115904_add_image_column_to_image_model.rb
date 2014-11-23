class AddImageColumnToImageModel < ActiveRecord::Migration
  def change
    add_column :images, :image, :string
  end
end
