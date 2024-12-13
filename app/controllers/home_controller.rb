class HomeController < ApplicationController
  def index
    @products = Product.order(:category_id)
    @categories = Category.order(:name)
  end
end
