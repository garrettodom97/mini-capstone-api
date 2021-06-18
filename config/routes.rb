Rails.application.routes.draw do
  get "/" => "products#home"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
end
