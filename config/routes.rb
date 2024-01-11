Rails.application.routes.draw do
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :authors, only: [:index, :show] do
    resources :articles, only: [:index, :show]
  end

  # Defines the root path route ("/")
  # root "posts#index"
end
