Rails.application.routes.draw do
  resources :microposts
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root 'homes#index'
end
