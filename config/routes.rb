Rails.application.routes.draw do
  resources :puntos

  # Defines the root path route ("/")
  root "puntos#index"
  get "/puntos/:id", to: "puntos#show"

  put "/puntos/:id", to: "puntos#update"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
