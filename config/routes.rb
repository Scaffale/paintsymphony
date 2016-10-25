Rails.application.routes.draw do
  resources :sessions
  root to: 'visitors#index'
  get "/data/settings"
  mount Lockup::Engine, at: 'data/settings'
  
end
