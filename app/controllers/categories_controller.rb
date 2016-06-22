class CategoriesController < ApplicationController
  def index
    @categories = Category.find_by(name: params[:category])
    @products = Product.where(category: @category).order("name ASC")
  end

  def show
    @category = Category.find(params[:id])
  end
end
