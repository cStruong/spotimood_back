Rails.application.routes.draw do
  resources :users, [:create, update, :show]
  resources :songs, [:create]
  post '/signup', to: "users#create"
  post '/login', to: "auth#create"
end
