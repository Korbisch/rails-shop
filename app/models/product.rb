class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(png|jpg|jpeg|gif)\z}i,
    message: 'must be a png, jpg, jpeg or gif file'
  }
end
