# == Schema Information
#
# Table name: galleries
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  description   :text
#  product_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Gallery < ActiveRecord::Base
  belongs_to :product
  has_many :images

  validates :name, presence: true
end
