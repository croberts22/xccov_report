Rails.application.routes.draw do
  resources :functions
  root 'functions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
