# == Schema Information
#
# Table name: categories
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  subcategory_id :integer
#  parent_id      :integer
#  lft            :integer
#  rgt            :integer
#  depth          :integer
#

class Category < ActiveRecord::Base
  
  acts_as_nested_set
  
  accepts_nested_attributes_for :children

  validates :name, presence: true
end
