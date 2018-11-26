Rails.application.routes.draw do
  get 'artwork_shares/create'
  get 'artwork_shares/destroy'
  resources :users, only: [:create, :destroy, :index, :show, :update]
  resources :artwork_share, only: [:create, :destroy]
end
