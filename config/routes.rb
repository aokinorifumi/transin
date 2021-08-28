Rails.application.routes.draw do
  root to: "items#index"
  get 'posts/index'
  get 'items/search'
  post 'posts', to: 'posts#create'
  resources :items, only: [:index, :new, :create, :show] do
    resources :posts, only: [:index]
  end
end
