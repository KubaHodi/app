class Product < ApplicationRecord
  include ActiveModel::Validations

  has_one_attached :cover_image
  belongs_to :category
  belongs_to :genre
  validates :name, :description, :brand, :price, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :category_id, presence: true
  validate :correct_image_mime_type

  private
  def correct_image_mime_type
    if cover_image.attached? && !cover_image.content_type.in?(%w(image/jpeg image/png))
      cover_image.purge
      errors.add(:image_url, 'Must be a JPEG or PNG')
    end
  end
end
