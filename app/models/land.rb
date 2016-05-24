class Land < ActiveRecord::Base
  validates :address, presence: true, length: { maximum: 50}
  validates :area, presence: true, length: { maximum: 10}
  validates :price, presence: true, length: { maximum: 10}
  validates :description, presence: true, length: { maximum: 1000 }
  validates :image_url, presence:true, length: { maximum: 200 }
end
