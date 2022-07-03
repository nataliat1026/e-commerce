Rails.application.routes.draw do
  resources :images, only: []
  resources :reviews, only: [:create, :update, :destroy]
  resources :users, only: []
  resources :category_tags, only: []
  resources :categories, only: [:show]
  resources :products, only: [:index, :show]
end
