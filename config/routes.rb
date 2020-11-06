Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#home"
  get "show", to: "secrets#show"
  get "/sessions", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
end
