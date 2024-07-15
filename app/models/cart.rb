class Cart < ApplicationRecord
  belongs_to :customer, optional: true

  has_many :carts_products, dependent: :destroy
  has_many :products, through: :carts_products

  def self.ransackable_associations(auth_object = nil)
    ["carts_products", "customer", "products"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "customer_id", "id", "id_value", "updated_at"]
  end
end
