class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.text :description
      t.belongs_to :gallery_id
      t.timestamps
    end
  end
end
