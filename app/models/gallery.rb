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

class Gallery < ActiveRecord::Base
  belongs_to :product
  has_many :images

  validates :name, presence: true
end
