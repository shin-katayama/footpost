Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get 'posts' => 'posts#index'
  get 'posts/new'  => 'posts#new'       #投稿画面
  post 'posts'      => 'posts#create'    #投稿機能
  delete  'posts/:id'  => 'posts#destroy'
  patch   'posts/:id'  => 'posts#update'
  get   'posts/:id/edit'  => 'posts#edit'
  get   'users/:id'   =>  'users#show'    #Mypageへのルーティング
  get 'posts/:id' => 'posts#show'
end