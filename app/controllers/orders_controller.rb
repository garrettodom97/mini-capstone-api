class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    users_carted_products = current_user.carted_products.where(status: "carted")

    order = Order.new(
      subtotal: subtotal,
      tax: tax,
      total: total,
      user_id: current_user.id,
    )
    if order.save
      users_carted_products.update_all(status: "purchased", order_id: order.id)
      render json: order
    else
      render json: { errors: order.errors.full_messages }
    end
  end

  def show
    order_id = params[:id]
    order = Order.find(order_id)

    if order.user_id == current_user.id
      render json: order, include: '["id", "subtotal", "tax", "total", "carted_products", "carted_products.quantity", "carted_products.product", "carted_products.product.name"]'
    else
      render json: {}, status: :unauthorized
    end
  end

  def index
    orders = current_user.orders
    render json: orders
  end

  def destroy
  end
end
