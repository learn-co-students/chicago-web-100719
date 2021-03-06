Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show, :index]
  get '/login', to: 'sessions#new', as: :login
  delete '/logout', to: 'sessions#delete', as: :logout
  resources :sessions, only: [:create]
  resources :deep_thoughts, only: [:new, :create]
  # post '/sessions', to: 'sessions#create', as: :sessions
end
