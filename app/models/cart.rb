class Cart < ApplicationRecord

  has_many :carts_products, dependent: :destroy
  has_many :products, through: :carts_products

  def self.ransackable_associations(auth_object = nil)
    ["carts_products", "products"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "updated_at"]
  end

end
