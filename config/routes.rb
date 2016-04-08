Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end
