Rails.application.routes.draw do
  root 'posts#index'
  get 'posts' => 'posts#index'
  get 'posts/new'  => 'posts#new'       #投稿画面
  post 'posts'      => 'posts#create'    #投稿機能
end