Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :show, :update, :destroy]
  # get 'users', to: 'users#index', as: 'users'
  # post 'users', to: 'users#create'
  # get 'users/:id', to: 'users#show', as: 'user'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
  resources :artworks, only: [:create, :show, :update, :destroy]
  resources :artworkshares, only: [:create, :destroy]
  resources :comments, only: [:index, :create, :destroy]

  resources :users do
    resources :artworks
  end

  resources :users do
    resources :comments
  end

  resources :artworks do
    resources :comments
  end
end
