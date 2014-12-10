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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
