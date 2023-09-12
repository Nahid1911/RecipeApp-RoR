Rails.application.routes.draw do
  devise_for :users
  # devise_scope :user do
  #   root to: 'users#index'
  # end
  resources :foods
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'foods#index'
end
