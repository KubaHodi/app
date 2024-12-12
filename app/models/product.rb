class Product < ApplicationRecord
  validates :name, :description, :image_url, :brand, :price, presence: true, uniqueness: true
  validates :category_id, presence: true
end
