Rails.application.routes.draw do

  resources :users
  resources :sons
  resources :fathers
  get 'uploads/new'

  get 'image/download' => 'pictures#download'

  resources :orders
  get 'search', to: 'search#search'

  resources :pictures
  resources :articles
  
  resources :posts

  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
    end
  end

  resources :uploads

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users

  root to: 'pictures#index'
end
