Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: "pages#home"

  get "/dashboard", to: "pages#dashboard"

  resources :psy_profiles, only: [:show] do
    member do
      get :start
    end
  end

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
end
