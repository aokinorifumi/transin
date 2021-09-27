Rails.application.routes.draw do
  root to: "items#index"
  get 'items/search'
  resources :items
  resources :posts, only: [:index, :create, :destroy]
  resources :rooms, only: [:index, :create, :destroy]
end
