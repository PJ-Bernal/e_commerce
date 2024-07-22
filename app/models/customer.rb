class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart, dependent: :restrict_with_error
  has_many :payments, dependent: :restrict_with_error
  has_many :shipments, dependent: :restrict_with_error
  has_many :orders, dependent: :restrict_with_error

  validates :customer_full_name, presence: true

  def self.ransackable_associations(auth_object = nil)
    ["cart"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "customer_email", "id", "id_value", "customer_full_name", "customer_password",
     "updated_at"]
  end

  def display_name
    customer_full_name.to_s
  end
end
