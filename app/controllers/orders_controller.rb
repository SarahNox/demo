class OrdersController < ApplicationController
  def index
    @orders = Order.all
    # @order = Order.find(params[:id])
  end

  def create 
    session[:cart].each do |product_id, quantity|
      OrderItem.create(product_id: product_id, quantity: quantity)
    end
  end

  def show
    @orders = Order.find(params[:id])
  end
end
