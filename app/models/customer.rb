class Customer < ApplicationRecord
  has_one_attached :image
  validates :name, :email, :phone_number, presence: true

  def self.sort_aplha
    order("name")
  end
end
