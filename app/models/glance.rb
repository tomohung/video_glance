class Glance < ActiveRecord::Base

  validates :image_address, presence: true
  belongs_to :video

end