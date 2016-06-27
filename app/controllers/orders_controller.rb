class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def create 
    if session[:cart].blank?
      redirect_to root_path
    else
      @order = Order.new
      @order.user = current_user
      session[:cart].each do |product_id, quantity|
        @order.order_items.build(product_id: product_id, quantity: quantity)
      end
      @order.save
      session[:cart] = nil
      redirect_to order_path(:id => @order.id)
    end
  end

  def show
    @order = Order.find(params[:id])
  end
end
