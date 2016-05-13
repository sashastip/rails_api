Rails.application.routes.draw do

  resources :pictures
  resources :articles
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

  root to: 'welcome#index'
end
