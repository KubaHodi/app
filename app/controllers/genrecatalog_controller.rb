class GenrecatalogController < ApplicationController
  def index
    current_genre_id = Genre.find_by_id(params[:genre_id])
    @genres = current_genre_id
    @products = Product.where(category_id: $cat_id, genre_id: current_genre_id)
    @categories = Category.all
  end

  
end
