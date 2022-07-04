Rails.application.routes.draw do
  resources :images, only: []
  resources :reviews, only: [:create, :update, :destroy]
  resources :users, only: [:show, :create, :update, :destroy]
  resources :category_tags, only: []
  resources :categories, only: [:show]
  resources :products, only: [:index, :show]

  get '/authorized_user', to: 'users#show'

  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
end
