class Province < ApplicationRecord

  has_many :shipments, dependent: :restrict_with_error
  has_many :orders, dependent: :restrict_with_error

  validates :name, presence: true
  validates :gst, :pst, :hst, numericality: { greater_than_or_equal_to: 0.0 }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "gst", "hst", "id", "id_value", "name", "pst", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["shipments"]
  end

end
