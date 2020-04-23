Rails.application.routes.draw do
  resources :functions
  root "functions#index"
end
