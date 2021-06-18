class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def home
    render json: "Welcome to my store!"
  end

  def show
    product_id = params[:id]
    product = Product.find(product_id)
    render json: product.as_json
  end
end
