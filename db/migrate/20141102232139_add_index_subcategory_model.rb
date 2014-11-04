class AddIndexSubcategoryModel < ActiveRecord::Migration
  def change
    add_index :subcategories, :category_id
  end
end
