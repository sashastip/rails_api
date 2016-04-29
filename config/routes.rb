Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
  root to: 'welcome#index'
  get "*path" => "welcome#index"

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
end
