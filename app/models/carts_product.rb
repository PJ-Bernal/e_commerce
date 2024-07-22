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

  def total_price_with_taxes(shipment = nil)
    shipment ||= cart.customer.shipments.last
    province = shipment.province
    gst = province.province_gst / 100
    pst = province.province_pst / 100
    hst = province.province_hst / 100

    base_price = product.product_price * cart_product_quantity
    total_taxes = base_price * (gst + pst + hst)
    base_price + total_taxes
  end
end
