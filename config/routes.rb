Rails.application.routes.draw do

  get 'welcome/index'

  resources :posts
  devise_for :users
  root to: 'application#index'
  #get "*path" => "application#index"

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
end
