Rails.application.routes.draw do

  devise_for :users

  root 'home#index'
  get 'persons/profile', as: 'user_root'
  resources :posts # NOTE: added all resources routes. TODO: write code to fit them
  
end
