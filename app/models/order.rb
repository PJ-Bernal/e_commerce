class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :province
  belongs_to :payment

  validates :total_amount, numericality: { greater_than_or_equal_to: 0.0 }
  validates :status, presence: true

  def self.ransackable_associations(auth_object = nil)
    ["customer", "payment", "province"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "customer_id", "id", "id_value", "payment_id", "province_id", "status", "total_amount", "updated_at"]
  end
end
