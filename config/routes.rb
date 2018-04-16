Rails.application.routes.draw do
  resources :items
  root 'static_pages#home'
  
  get '/about', to:'static_pages#about'

  get '/gallery', to:'static_pages#gallery'
  
  get '/login', to:'user#login'
  
  get '/logout', to:'user#logout'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
