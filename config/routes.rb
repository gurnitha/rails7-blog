# config/routes.rg

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # http://127.0.0.1:3000/articles to:"controller with index action"
  get "/articles", to: "articles#index"
end
