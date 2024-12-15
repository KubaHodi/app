class CatalogController < ApplicationController
  def index
    @products = Product
    @categories = Category.find_by_id(params[:category_id])
  end
end
