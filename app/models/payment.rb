class Payment < ApplicationRecord
  validates :method, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0.0 }
  validates :status, presence: true

  belongs_to :customer
end
