# == Schema Information
#
# Table name: galleries
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  product_id  :integer
#

require 'test_helper'

class GalleryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
