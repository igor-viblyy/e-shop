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

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
