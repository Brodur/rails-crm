Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resource :customers, only: %i[show index]
  get "/alpha", to: "customers#alpha_sort"
  root to: "customers#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
