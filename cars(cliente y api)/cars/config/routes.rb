Rails.application.routes.draw do
  resources :fuel_types
  resources :structures
  resources :classifications
  resources :accessories
  resources :brands
  resources :cars do
  	get :olds, :on => :collection
  end

  root 'cars#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
