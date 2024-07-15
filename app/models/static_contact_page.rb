class StaticContactPage < ApplicationRecord
  validates :title, :engaging_paragraph, :contact_number, :location, :email, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["contact_number", "created_at", "email", "engaging_paragraph", "id", "id_value", "location",
     "title", "updated_at"]
  end
end
