Rails.application.routes.draw do
  resources :structures
  resources :classifications
  resources :accessories
  resources :brands
  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
