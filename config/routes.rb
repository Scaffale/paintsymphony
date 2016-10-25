Rails.application.routes.draw do
  resources :pictures
  mount Lockup::Engine, at: 'data/settings'
  resources :sessions
  root to: 'visitors#index'
  get '/data/settings'
  get '/data/manage'
end
