Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  get '/help', to: 'static_pages#help'

  resources :users
  resources :stores
  resources :sessions

  get '/user/sign_up',    to: 'users#new'
  post '/user',    to: 'users#create'
  put '/user/:id',    to: 'users#update'
  
  get '/store/sign_up',    to: 'stores#new'
  post '/store',    to: 'stores#create'
  put '/store/:id',    to: 'stores#update'
  
  get '/session/log_in',    to: 'sessions#new'
  post '/session',    to: 'sessions#create'
  get '/session/log_out',    to: 'sessions#destroy'

end
