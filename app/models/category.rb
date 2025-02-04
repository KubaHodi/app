class Category < ApplicationRecord
  has_one_attached :category_image
  has_many :products
  validates :name, presence: true, uniqueness: true
  validates :category_image, presence: true
  validate :correct_image_mime_type
  private
  def correct_image_mime_type
    if category_image.attached? && !category_image.content_type.in?(%w(image/png))
      category_image.purge
      errors.add(:image_url, 'Must be a PNG file')
    end
  end
end
