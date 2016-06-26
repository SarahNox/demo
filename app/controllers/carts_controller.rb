class CartsController < ApplicationController

  def show
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  def add_to_cart
    product_id = params[:product_id]
    if !session[:cart] 
      session[:cart] = {}
    end
    if session[:cart][product_id]
      session[:cart][product_id] = session[:cart][product_id] + 1
    else 
      session[:cart][product_id] = 1
    end
    redirect_to cart_path
  end

  def clear_cart
    session[:cart] = {}
    redirect_to cart_path
  end

end

