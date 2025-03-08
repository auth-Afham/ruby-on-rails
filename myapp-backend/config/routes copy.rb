Rails.application.routes.draw do
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # API routes
  namespace :api do
    namespace :v1 do
      resources :tasks
    end
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
