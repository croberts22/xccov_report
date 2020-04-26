Rails.application.routes.draw do

  resources :coverage_reports
  resources :coverage_targets
  resources :coverage_files
  resources :functions
  root 'coverage_reports#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
