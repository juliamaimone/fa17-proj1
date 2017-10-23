Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/capture', to: 'pokemons#capture', :as => :capture
  patch '/damage', to: 'pokemons#damage', :as => :damage
  get 'pokemon/new', to: 'pokemons#new', :as => :new_pokemon
  post 'pokemon/create', to: 'pokemons#create', :as => :pokemons
end
