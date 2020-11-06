Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resource :customers, only: %i[show index]
  get "/customers/alphabetized", to: "customers#alpha_sort"
  get "/customers/missing_email", to: "customers#missing_email"
  root to: "customers#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
