class OrdersController < ApplicationController
  def index
    @orders = Order.all
    # @order = Order.find(params[:id])
  end

  def create 
    @order = Order.new
    session[:cart].each do |product_id, quantity|
    @order.order_items.build(product_id: product_id, quantity: quantity)
    end
    @order.save
    session[:cart] = nil
    redirect_to order_path(:id => @order.id)
  end

  def show
    @order = Order.find(params[:id])
  end
end