Rails.application.routes.draw do
  # get 'customers/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :customers, only: %i[index show] do
    collection do
      get :missing_email
      get :alphabetized
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"customers#index"
end
