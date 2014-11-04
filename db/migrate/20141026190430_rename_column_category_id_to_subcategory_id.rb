class RenameColumnCategoryIdToSubcategoryId < ActiveRecord::Migration
  def change
    remove_column :categories, :category_id
    add_column :categories, :subcategory_id, :integer
    add_index :categories, :subcategory_id
  end
end
