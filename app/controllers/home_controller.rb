class HomeController < ApplicationController
  skip_before_action :authorize
  def index
    @products = Product.order(:category_id)
    @categories = Category.order(:name)
  end
end
