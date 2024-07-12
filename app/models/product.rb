class Product < ApplicationRecord
  belongs_to :category

  has_many :carts_products
  has_many :carts, through: :carts_products

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "id_value", "name", "price", "stock", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["carts", "carts_products", "category"]
  end

  
end
