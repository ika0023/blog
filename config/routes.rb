Rails.application.routes.draw do
  root 'sessions#index'
  get '/login',to: 'sessions#login'
  post 'login', to: 'sessions#login'
end
