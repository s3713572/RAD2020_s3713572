Rails.application.routes.draw do
  resources :comments
  get 'sessions/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup',to: 'users#new'
  get '/my_setting',to: 'users#my_setting'
  post '/signup',to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :microposts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
