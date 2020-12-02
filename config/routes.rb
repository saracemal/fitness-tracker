Rails.application.routes.draw do
  resources :users
  resources :routines
  resources :exercises
  resources :entries
  resources :likes
  resources :routine_exercises
  resources :user_routines
  get 'routines/:id/routine_entries', to: 'routines#routine_entries', as: 'routine_entries'
  #get 'user/:id/user_routines', to: 'users#user_routines', as: 'user_routines'

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions/login', to: 'sessions#login', as: 'login'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
