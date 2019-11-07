Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cat_dogs, only: [:new, :create, :show]
  resources :pet_beds, only: [:show]
end
