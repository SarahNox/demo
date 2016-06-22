class CartController < ApplicationController
  def add
    product = params[:product]
    cart << product
    render "index"
  end

  def clearCart
  end
  
  def index
  end
end
