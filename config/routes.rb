Rails.application.routes.draw do

  resources :orders
  get 'search', to: 'search#search'

  resources :pictures
  resources :articles

  resources :images

  
  resources :posts

  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users

  root to: 'pictures#index'
end
