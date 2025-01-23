class AdminController < ApplicationController
  def index
    @products = Product.count
    @categories = Category.count
    @genres = Genre.count

    @user = current_user
  end
end
