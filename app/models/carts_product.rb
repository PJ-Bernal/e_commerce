class CartsProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  validates :cart_product_quantity, numericality: { greater_than_or_equal_to: 1 }

  def self.ransackable_attributes(auth_object = nil)
    ["cart_id", "created_at", "id", "id_value", "product_id", "cart_product_quantity", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["cart", "product"]
  end
end
