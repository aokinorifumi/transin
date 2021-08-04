Rails.application.routes.draw do
  get 'items/search'
  root to: "items#index"
  resources :items, only: [:index, :new, :create, :show]
end
