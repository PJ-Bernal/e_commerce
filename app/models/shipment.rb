class Shipment < ApplicationRecord

  belongs_to :customer
  belongs_to :province

  validates :date, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zip_code, presence: true, format: { with: /\A[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d\z/, message: "must be a valid Canadian postal code" }

  def self.ransackable_attributes(auth_object = nil)
    ["address", "city", "created_at", "date", "id", "id_value", "updated_at", "zip_code"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["customer", "province"]
  end
end
