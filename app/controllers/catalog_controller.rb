class CatalogController < ApplicationController
  skip_before_action :authorize
  def index
    @products = Product.all
    @category = Category.find_by_id(params[:category_id])
    @genres = Genre.all
    $cat_id = Category.find_by_id(params[:category_id]) #global variable for storing category_id all over controllers
  end
  
end
