class CatalogController < ApplicationController
  def index
    @products = Product.order(:category_id)
    @categories = Category.find_by_id(params[:category_id])
  end
end
