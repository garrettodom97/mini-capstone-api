class OrdersController < ApplicationController
  def create
    if current_user
      product = Product.find(params[:product_id])
      order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: product.price * params[:quantity].to_i,
        tax: product.tax * params[:quantity].to_i,
        total: product.total * params[:quantity].to_i,
      )
      if order.save
        render json: order
      else
        render json: { errors: order.errors.full_messages }
      end
    else
      render json: {}, status: :unauthorized
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
    if current_user
      orders = current_user.orders
      render json: orders
    else
      render json: {}, status: :unauthorized
    end
  end
end
