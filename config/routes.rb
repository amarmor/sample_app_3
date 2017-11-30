Rails.application.routes.draw do
  root 'static_pages#Home'
  get '/help', to: 'static_pages#Help'
  get '/about', to: 'static_pages#About'
  get '/contact', to: 'static_pages#Contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
