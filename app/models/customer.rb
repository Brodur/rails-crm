class Customer < ApplicationRecord
  has_one_attached :image
  validates :name, :email, :phone_number, presence: true
end
