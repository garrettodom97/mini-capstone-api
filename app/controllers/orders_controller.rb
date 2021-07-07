class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    users_carted_products = current_user.cartedProducts.where("status = ?", "carted")
    subtotal = 0
    users_carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
    end
    order = Order.new()
    if order.save
      render json: order
    else
      render json: { errors: order.errors.full_messages }
    end
  end

  def show
    order_id = params[:id]
    order = Order.find(order_id)

    if order.user_id == current_user.id
      render json: order
    else
      render json: {}, status: :unauthorized
    end
  end

  def index
    orders = current_user.orders
    render json: orders
  end
end
