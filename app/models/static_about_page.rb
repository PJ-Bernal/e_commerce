class StaticAboutPage < ApplicationRecord
  validates :mission, :vision, :story, :value, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "mission", "story", "updated_at", "value", "vision"]
  end
end
