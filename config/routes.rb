Rails.application.routes.draw do
  get "/" => "products#home"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "products" => "products#create"
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "suppliers" => "suppliers#create"
  patch "suppliers/:id" => "suppliers#update"
  delete "suppliers/:id" => "suppliers#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"
end
