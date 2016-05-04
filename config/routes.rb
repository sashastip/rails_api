Rails.application.routes.draw do

  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts

  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
    end
  end
  
  devise_for :users

  root to: 'application#index'
  get '*path' => "application#index"
end
