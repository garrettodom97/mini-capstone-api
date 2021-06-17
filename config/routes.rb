Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_products", controller: "products", action: "all_products"
  get "/", controller: "products", action: "home_page"
  get "/first_product", controller: "products", action: "first_product"
  get "/second_product", controller: "products", action: "second_product"
  get "/third_product", controller: "products", action: "third_product"

  get "/product_by_param" => "products#product_by_param"
  get "product_by_param/:id" => "products#product_by_param"
  get "/product_by_name" => "products#product_by_name"
  get "product_by_name/:name" => "products#product_by_name"
end
