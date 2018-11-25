Rails.application.routes.draw do
  get 'art_works/index'
  get 'art_works/create'
  get 'art_works/show'
  get 'art_works/update'
  get 'art_works/destroy'
  resources :users, only: [:create, :destroy, :index, :show, :update]
end
