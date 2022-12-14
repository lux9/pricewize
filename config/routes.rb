Rails.application.routes.draw do
  resources :products do
    get '/page/:page', action: :index, on: :collection
    resources :prices, only: :create
  end
  resources :prices, only: [:destroy, :show]
  
  resources :categories, only: [:show, :index]
  devise_for :users
  root to: "products#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
