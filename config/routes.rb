Rails.application.routes.draw do
  root 'static_pages#Home'

  get '/help', to: 'static_pages#Help'

  get '/about', to: 'static_pages#About'

  get '/contact', to: 'static_pages#Contact'
end
