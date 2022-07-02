Rails.application.routes.draw do
  resources :images, only: []
  resources :reviews, only: []
  resources :users, only: []
  resources :category_tags, only: []
  resources :categories, only: [:show]
  resources :products, only: [:index, :show]
end
