class Room < ApplicationRecord
  
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :beside
  belongs_to :vertical
end
