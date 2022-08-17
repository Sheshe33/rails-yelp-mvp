class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  category = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: {in: category }
end
