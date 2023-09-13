# Rails.application.routes.draw do
#   devise_for :users
#   resources :foods
#   resources :users
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
#   root 'foods#index'
# end

Rails.application.routes.draw do
  devise_for :users
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    member do
      post 'toggle_public'
    end
    resources :recipe_foods, only: [:index, :show, :new, :create, :destroy] 
  end
  resources :users, only: [:index, :show, :new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'foods#index'
end