Rails.application.routes.draw do
  get 'data/settings'
  get 'data/manage'
  resources :words
  resources :musics
  resources :pictures
  resources :sessions
  resources :phases
  resources :finalphases
  resources :opinions
  post 'phases/update_mark'
  root to: 'visitors#index'
  mount Lockup::Engine, at: '/data/settings'
  
end
