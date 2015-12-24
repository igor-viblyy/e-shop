# == Schema Information
#
# Table name: images
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  image       :string(255)
#  gallery_id  :integer
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
