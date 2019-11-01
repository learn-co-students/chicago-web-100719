Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/choppers/about", to: "choppers#about"

  resources :choppers
end
