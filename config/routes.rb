Rails.application.routes.draw do
  resources :products do
    resources :prices, only: :create
  end
  resources :categories, only: :show
  devise_for :users
  root to: "products#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
