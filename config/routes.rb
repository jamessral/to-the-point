Rails.application.routes.draw do
  root to: 'users#index'

  resources :users

  resources :sessions, only: %i[new create]

  delete "/sessions" => "sessions#destroy", as: :destroy_session

  get "up" => "rails/health#show", as: :rails_health_check
end
