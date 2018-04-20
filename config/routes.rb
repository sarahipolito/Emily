Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get 'cart/index'
  
  resources :items
  root 'static_pages#home'
  
  get '/about', to:'static_pages#about'

  get '/gallery', to:'static_pages#gallery'
  
  get '/login', to:'user#login'
  
  get '/logout', to:'user#logout'
  
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to: 'cart#remove'
  root :to => 'site#home'
  get 'category/:title', to: 'static_pages#category'
end
