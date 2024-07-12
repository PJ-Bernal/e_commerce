class Customer < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_one :cart, dependent: :destroy

  def self.ransackable_associations(auth_object = nil)
    ["cart"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "first_name", "id", "id_value", "last_name", "password", "updated_at"]
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
