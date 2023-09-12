Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create, :destroy] do
    resources :recipes, only: [:index, :show, :new, :create, :destroy]
    resources :recipe_foods, only: [:index, :show, :new, :create, :destroy] do 
      resources :foods
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'
end
