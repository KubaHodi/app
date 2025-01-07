class Product < ApplicationRecord
  has_one_attached :cover_image
  belongs_to :category
  belongs_to :genre
  validates :name, :description, :image_url, :brand, :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :category_id, presence: true
end
