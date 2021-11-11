class Customer < ApplicationRecord
  has_one_attached :image
  validates :fullName, presence: true
end
