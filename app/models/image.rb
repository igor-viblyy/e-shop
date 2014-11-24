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

class Image < ActiveRecord::Base
  belongs_to :gallery

  validates :name, presence: true
  validates :image, presence: true
end
