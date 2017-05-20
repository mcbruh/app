Rails.application.routes.draw do
  resources :reviews
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes
  get 'sessions/welcome'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'sessions#welcome'

end
