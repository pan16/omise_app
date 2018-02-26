Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/',    to: 'static_pages#home',    via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/user/sign_up',    to: 'users#new',    via: 'get'
  match '/user',    to: 'users#create',    via: 'post'
  match '/user/update',    to: 'users#update',    via: 'post'
  match '/user/sign_out',    to: 'users#destroy',    via: 'delete'
  match '/user/point',    to: 'users#point',    via: 'get'
  match '/store/sign_up',    to: 'stores#new',    via: 'get'
  match '/store',    to: 'stores#create',    via: 'post'
  match '/store/update',    to: 'stores#update',    via: 'post'
  match '/store/index',    to: 'stores#index',    via: 'get'
  match '/store/sign_out',    to: 'stores#destroy',    via: 'delete'

end
