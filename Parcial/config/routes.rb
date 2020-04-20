Rails.application.routes.draw do
  resources :programs
  resources :genres
  resources :episodes
  resources :seasons
  resources :series
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
