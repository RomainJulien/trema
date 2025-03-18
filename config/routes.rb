Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "/dashboard", to: "pages#dashboard"
  resources :psy_profiles, only: [:show]
  resources :jobs, only: [:show] do
    resources :favorites, only: [:create]
  end
  resources :answers, only: [:new, :create]
  resources :careers, only: [:show, :create]
  resources :steps, only: [] do
    member do
      patch :completed
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"
  #
end
