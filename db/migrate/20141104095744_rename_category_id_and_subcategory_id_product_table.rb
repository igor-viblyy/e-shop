class RenameCategoryIdAndSubcategoryIdProductTable < ActiveRecord::Migration
  def change
    remove_column :products, :Category_id
    remove_column :products, :Subcategory_id
    add_column :products, :category_id, :integer
    add_column :products, :subcategory_id, :integer
    add_index :products, :category_id
    add_index :products, :subcategory_id
  end
end
