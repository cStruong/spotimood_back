Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :themes, only: [:create, :index]
  resources :songs, only: [:create, :index]
  resources :playlists, only: [:create, :index]

end
