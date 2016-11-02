Rails.application.routes.draw do
  resources :words
  get 'data/settings'
  get 'data/manage'
  resources :musics
  resources :pictures
  resources :sessions
  resources :phases
  resources :opinions
  post 'phases/update_mark'
  root to: 'visitors#index'
  mount Lockup::Engine, at: '/data/settings'
  
end
