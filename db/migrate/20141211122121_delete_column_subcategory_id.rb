class DeleteColumnSubcategoryId < ActiveRecord::Migration
  def change
    remove_column :categories, :subcategory_id
    
  end
end
