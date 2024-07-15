class Category < ApplicationRecord
  has_many :products, dependent: :restrict_with_error

  validates :category_name, presence: true

  def self.ransackable_associations(auth_object = nil)
    ["products"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "category_name", "updated_at"]
  end
end
