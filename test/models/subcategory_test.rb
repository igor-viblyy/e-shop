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

require 'test_helper'

class SubcategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
