class Product < ApplicationRecord
  belongs_to :category
  
  validates :name, :description, :image_url, :brand, :price, presence: true
  validates :name, uniqueness: true
  validates :image_url, format:{
  with: %r{\.(jpg|png)\z}i, message: "must be in PNG or JPG format"}
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :category_id, presence: true
end
