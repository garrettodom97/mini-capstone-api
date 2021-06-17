class ProductsController < ApplicationController
  def all_products
    products = Product.all
    render json: products.as_json
  end

  def home_page
    render json: "Welcome to my store!"
  end

  def first_product
    product = Product.first
    render json: product.as_json
  end

  def second_product
    product = Product.second
    render json: product.as_json
  end

  def third_product
    product = Product.third
    render json: product.as_json
  end

  def product_by_param
    product = Product.find_by(id: params["id"])
    render json: product
  end

  def product_by_name
    product = Product.find_by(name: params["name"])
    render json: product
  end
end
