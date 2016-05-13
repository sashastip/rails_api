Rails.application.routes.draw do

  resources :articles
  resources :articles

  resources :images
  get 'welcome/index'

  
  resources :posts

  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: 'welcome#index'
  get '*path' => "welcome#index"
end
