Rails.application.routes.draw do
	
  resources :reviews
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes

  devise_for :users, controllers: { sessions: 'users/sessions'} do
    resources :reviews
    resources :recipes do
      resources :ingredients
      resources :reviews
    end
  end

  resources :ingredients
  resources :recipes, only: [:show, :index] do
    resources :reviews
  end
  resources :reviews, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'sessions#welcome'
  get '/users/:id', to: "users/sessions#new"

end
