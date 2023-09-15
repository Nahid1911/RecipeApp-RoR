Rails.application.routes.draw do
  devise_for :users
  resources :shopping_lists
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    member do
      post 'toggle_public'
    end
    resources :recipe_foods, only: [:index, :show, :new, :create, :destroy] 
  end
  resources :users, only: [:index, :show, :new, :create, :destroy]

  root 'foods#index'
end