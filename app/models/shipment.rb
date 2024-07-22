class Shipment < ApplicationRecord
  belongs_to :customer
  belongs_to :province

  validates :shipment_address, presence: true
  validates :shipment_city, presence: true
  validates :shipment_zip_code, presence: true,
                                format:   { with:    /\A[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d\z/,
                                            message: "invalid" }

  def self.ransackable_attributes(auth_object = nil)
    ["shipment_address", "shipment_city", "created_at", "shipment_date", "id", "id_value",
     "updated_at", "shipment_zip_code"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["customer", "province"]
  end
end
