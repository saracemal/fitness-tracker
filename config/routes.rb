Rails.application.routes.draw do
  resources :users
  resources :routines
  resources :exercises
  resources :entries
  resources :likes
  resources :routine_exercises
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
