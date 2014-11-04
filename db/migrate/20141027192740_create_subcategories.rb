class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name
      t.timestamps
      t.integer :category_id
    end
  end
end
