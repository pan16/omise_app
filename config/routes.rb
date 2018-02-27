Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  get '/help', to: 'static_pages#help'

  resources :users, except: %i(new index)
  resources :stores, except: %i(new)
  resources :sessions, only: %i(new create destroy)

  get '/user/sign_up',    to: 'users#new'
  get '/store/sign_up',    to: 'stores#new'

end
