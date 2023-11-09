class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  # @param [Integer] product_id
  def add_line_item(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.new(product_id: product_id)
    end
    current_item
  end
end
