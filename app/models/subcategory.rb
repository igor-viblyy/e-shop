# == Schema Information
#
# Table name: subcategories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer
#

class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :products

  validates :name, presence: true
end
