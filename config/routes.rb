Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  root 'static_pages#home'
  
  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  get '/login', to: 'session#new'

  post '/login', to: 'session#create'

  delete '/logout', to: 'session#destroy'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'
  
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :edit, :create, :update]
end
