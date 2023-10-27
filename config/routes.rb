Rails.application.routes.draw do
  resources :users

  resources :sessions, only: %i[new create destroy]

  get "up" => "rails/health#show", as: :rails_health_check
end
