class CatalogController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.find_by_id(params[:category_id])
    @genres = Genre.all
    $cat_id = Category.find_by_id(params[:category_id]) #global variable for storing category_id all over controllers
  end
  
end
