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
  resources :users do
    collection do
      get 'bulk_create' => 'users#bulk_create', as: :bulk_create
      post 'bulk_update' => 'users#bulk_update', as: :bulk_update
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end