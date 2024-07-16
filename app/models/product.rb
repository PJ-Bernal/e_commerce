class Product < ApplicationRecord
  belongs_to :category

  has_many :carts_products, dependent: :destroy
  has_many :carts, through: :carts_products

  validates :product_name, presence: true
  validates :product_description, presence: true
  validates :product_stock,  numericality: { greater_than_or_equal_to: 0.0 }
  validates :product_price,  numericality: { greater_than_or_equal_to: 0.0 }

  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "id", "id_value", "product_description", "product_name",
     "product_price", "product_stock", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["carts", "carts_products", "category", "image_attachment", "image_blob"]
  end

  def display_name
    product_name.to_s
  end

  def discounted_price
    product_price * 0.9 if product_sale == 1
  end
end
