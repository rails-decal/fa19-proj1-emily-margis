Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/pokemons/capture', to: 'pokemons#capture', as: 'capture'
  patch 'pokemons/damage', to: 'pokemons#damage', as: 'damage'
  get 'pokemons/new', to: 'pokemons#new'
  post 'pokemons/new', to: 'pokemons#new'
  # post 'trainers/show', to: 'trainers#show'
  post 'pokemons/create', to: 'pokemons#create'
end
