Rails.application.routes.draw do

  get 'sessions/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/newtasktype', to: 'task_types#new'

  resources :users
  resources :tasks, only: [:create, :edit, :update, :destroy]
  resources :task_types

end
