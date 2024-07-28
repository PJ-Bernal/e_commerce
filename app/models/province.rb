class Province < ApplicationRecord
  has_many :shipments, dependent: :restrict_with_error
  has_many :orders, dependent: :restrict_with_error

  validates :province_name, presence: true

  validates :province_gst, :province_pst, :province_hst,
            numericality: { greater_than_or_equal_to: 0.0 }

  def self.ransackable_associations(auth_object = nil)
    ["orders", "shipments"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "province_gst", "province_hst", "province_name",
     "province_pst", "updated_at"]
  end

  def display_name
    province_name.to_s
  end
end
