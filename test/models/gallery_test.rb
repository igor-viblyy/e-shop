# == Schema Information
#
# Table name: galleries
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  description   :text
#  product_id_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class GalleryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
