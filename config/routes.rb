Rails.application.routes.draw do
  resources :sessions
  root to: 'visitors#index'
end
