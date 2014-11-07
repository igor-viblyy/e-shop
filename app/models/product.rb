# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  description    :text
#  price          :float
#  status         :boolean
#  created_at     :datetime
#  updated_at     :datetime
#  category_id    :integer
#  subcategory_id :integer
#  image          :string(255)
#

class Product < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  belongs_to :category
  belongs_to :subcategory

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true

end
