class HomeController < ApplicationController
  skip_before_action :authorize
  def index
    @categories = Category.order(:name)
  end
end
