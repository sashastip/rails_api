Rails.application.routes.draw do

  
  resources :images
  get 'welcome/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts

  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
    end
  end
  
  devise_for :users

  root to: 'welcome#index'
  get '*path' => "welcome#index"
end
