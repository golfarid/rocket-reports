Rails.application.routes.draw do
  resources :parameters
  resources :group_reports
  resources :reports
  resources :datasets
  resources :users
  resources :templates
  resources :connections
  resources :groups
  resources :roles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
