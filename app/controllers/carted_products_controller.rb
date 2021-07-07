class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    if carted_product.save
      render json: carted_product
    else
      render json: { errors: carted_product.errors.full_messages }
    end
  end

  def index
    users_carted_products = current_user.cartedProducts.where("status = ?", "carted")
    render json: users_carted_products
  end
end
