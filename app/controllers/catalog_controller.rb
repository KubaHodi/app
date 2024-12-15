class CatalogController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.find_by_id(params[:category_id])
  end
end
