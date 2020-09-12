class Prototype < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :images, presence: true
end
