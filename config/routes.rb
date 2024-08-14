Rails.application.routes.draw do
  devise_for :users
  get 'spots/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "spots#index"
  resources :users, only: [:edit, :update]
end
