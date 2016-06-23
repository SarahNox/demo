class ProductsController < ApplicationController
  before_filter :admin_authorize, except: [:index, :show]
  # create, new, edit just for admin

  def index
    @products = Product.all
    @product = Product.find_by_id(params[:product_id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def show
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render 'new'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :category, :category_id)
  end

end
