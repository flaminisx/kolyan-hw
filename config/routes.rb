Rails.application.routes.draw do

  root 'home#index'

  #get 'post/new', to: 'posts#new'
  resources :posts, only: [:new, :create, :show]

end
