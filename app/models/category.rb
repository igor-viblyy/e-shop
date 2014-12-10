# == Schema Information
#
# Table name: categories
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  subcategory_id :integer
#

class Category < ActiveRecord::Base
<<<<<<< HEAD
  acts_as_nested_set
=======
  has_many :subcategories, dependent: :destroy
  has_many :products, dependent: :destroy
>>>>>>> gallery

  #validates :name, presence: true
end
