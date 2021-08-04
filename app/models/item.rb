class Item < ApplicationRecord
  validates :category_id, presence: true
  validates :name, presence: true
  validates :price, presence: true
  validates :delivery_month_id, presence: true
  validates :delivery_day_id, presence: true
  validates :delivery_time_id, presence: true
  validates :image, presence: true

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :delivery_month
  belongs_to :delivery_day
  belongs_to :delivery_time

end
