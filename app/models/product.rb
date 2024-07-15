class Product < ApplicationRecord
  belongs_to :category

  has_many :carts_products
  has_many :carts, through: :carts_products

  validates :product_name, presence: true
  validates :product_description, presence: true
  validates :product_stock,  numericality: { greater_than_or_equal_to: 0.0 }
  validates :product_price,  numericality: { greater_than_or_equal_to: 0.0 }

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "product_description", "id", "id_value", "product_name", "product_price", "product_stock", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["carts", "carts_products", "category"]
  end

  
end
