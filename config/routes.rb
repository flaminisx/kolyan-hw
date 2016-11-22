Rails.application.routes.draw do

  root 'home#index'

  resources :posts # NOTE: added all resources routes. TODO: write code to fit them

end
