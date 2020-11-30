Rails.application.routes.draw do
  get 'users/index'
  match '/users',   to: 'users#index',   via: 'get'
  devise_for :users
  root to: 'pages#home'
  resources :evaluation_scores
  resources :evaluations
  resources :assignments
  resources :user_groups
  resources :groups
  resources :roles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end