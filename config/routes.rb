Rails.application.routes.draw do
  resources :musics
  resources :pictures
  mount Lockup::Engine, at: 'data/settings'
  resources :sessions
  root to: 'visitors#index'
  get '/data/settings'
  get '/data/manage'
end
