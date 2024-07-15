class Payment < ApplicationRecord
  validates :payment_method, presence: true
  validates :payment_amount, numericality: { greater_than_or_equal_to: 0.0 }
  validates :payment_status, presence: true

  belongs_to :customer
  has_many :orders

  def self.ransackable_associations(auth_object = nil)
    ["customer", "orders"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "customer_id", "id", "id_value", "payment_amount", "payment_method", "payment_status", "updated_at"]
  end




end
