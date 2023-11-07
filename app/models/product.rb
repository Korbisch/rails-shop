class Product < ApplicationRecord
  has_many :line_items

  before_destroy :not_referenced_by_line_item

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true, length: {
    minimum: 10,
    message: "is too short. It should have at least 10 characters."
  }
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(png|jpg|jpeg|gif)\z}i,
    message: 'must be a png, jpg, jpeg or gif file'
  }

  private

  def not_referenced_by_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items still present')
      throw :abort
    end
  end
end
