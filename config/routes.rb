Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  get 'authors/index'
  get 'authors/show'
  root to: "articles#index"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :authors, only: [:index, :show] do
    resources :articles, only: [:index, :show]
  end
end
