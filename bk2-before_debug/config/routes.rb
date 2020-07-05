Rails.application.routes.draw do
  get 'search/search'
  root 'home#top'
  get 'home/about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
    member do
    get :followings, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
  end
  get '/search' => 'search#search'
end