Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :types
  resources :fuels
  resources :cars
  resources :reservations
  resources :services
  get "accounts", to: "accounts#index"
  delete "accounts/:id", to: "accounts#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
