Rails.application.routes.draw do
  get 'map/index'

  resources :mapusers
  devise_for :users
  root 'posts#index'
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
  resources :instagrams
end