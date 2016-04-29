Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
  root to: 'welcome#index'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :posts
      resources :users
    end
  end
end
