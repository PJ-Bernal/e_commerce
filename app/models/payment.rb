class Payment < ApplicationRecord
  validates :method, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.0 }
  validates :status, presence: true

  belongs_to :customer
  has_many :orders

  def self.ransackable_associations(auth_object = nil)
    ["customer"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["amount", "created_at", "customer_id", "id", "id_value", "method", "status", "updated_at"]
  end
end
