# == Schema Information
#
# Table name: images
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  description   :text
#  gallery_id_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#  image         :string(255)
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
