Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
    end
  end

  root to: 'application#index'
  get '*path' => "application#index"
end
