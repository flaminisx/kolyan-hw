Rails.application.routes.draw do

  devise_for :users

  root 'home#index'
  get 'users/edit/:id', to: 'users#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'
  resources :posts # NOTE: added all resources routes. TODO: write code to fit them
  
end
