class GenrecatalogController < ApplicationController
  def index
    current_genre_id = Genre.find_by_id(params[:genre_id])
    current_category_id = $cat_id

    @genres = current_genre_id
    @categories = current_category_id
    @products = Product.where(category_id: $cat_id, genre_id: current_genre_id)
    
  end

  
end
