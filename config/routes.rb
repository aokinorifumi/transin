Rails.application.routes.draw do
  root to: "items#index"
  get 'items/search'
  resources :items, only: [:index, :new, :create, :show]
  resources :posts, only: [:index, :create, :destroy]
  
end
