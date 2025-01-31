class Category < ApplicationRecord
  has_one_attached :category_image
  has_many :products
  validates :name, presence: true, uniqueness: true
end
