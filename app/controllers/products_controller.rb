class ProductsController < ApplicationController
  before_filter :admin_authorize, except: [:index, :show]
  # create just for admin

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'You added a new product to the shop'
    else
      render 'new'
    end
  end

  def show
  end

  private
  def product_params
    params.require(:product).permit(:name, :price) #:quantity
  end

end
