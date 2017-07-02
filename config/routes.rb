Rails.application.routes.draw do
  get '/login' to:'sessions#new'
  get '/login' to:'sessions#create'

end
