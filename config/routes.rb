Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players, only: [:index, :show, :create, :update]
  resources :courses, only: [:index, :show, :create]
  resources :holes, only: [:index, :show, :create, :update]
  resources :scorecards, only: [:index, :show, :create]
  post "/auth/create", to: "auth#create"
  get "/auth/show", to: "auth#show"
  patch "/players/:id", to: "players#update"
end
