require "test_helper"

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  test "product fields must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:name].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:brand].any?
    assert product.errors[:price].any?
    assert product.errors[:category_id].any?
  end
end
