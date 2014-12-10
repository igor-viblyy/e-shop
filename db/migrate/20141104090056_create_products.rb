class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.boolean :status
      t.belongs_to :Subcategory
      t.belongs_to :Category

      t.timestamps
    end
  end
end
