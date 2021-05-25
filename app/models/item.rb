class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :delivery, presence: true
  validates :image, presence: true

  has_one_attached :image
end
