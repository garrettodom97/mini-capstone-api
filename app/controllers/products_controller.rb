class ProductsController < ApplicationController
  def all_products
    products = Product.all
    render json: products.as_json
  end

  def home_page
    render json: "Welcome to my store!"
  end
end
