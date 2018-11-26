Rails.application.routes.draw do

  resources :artworks, only: [:create, :destroy, :show, :update]

  resources :users, only: [:create, :destroy, :index, :show, :update] do
    resources :artworks, only: [:index]
  end

  resources :artwork_shares, only: [:create, :destroy]

end
