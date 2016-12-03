Rails.application.routes.draw do
  get 'data/settings'
  get 'data/manage'
  # get '/data/pause/:id' => "data#pause", as 'pause_session'
  resources :words
  resources :musics
  resources :pictures
  get "/sessions/download_all" => "sessions#download_all", as: 'download_all_session'
  resources :sessions
  get "/sessions/:id/download" => "sessions#download", as: 'download_session'
  resources :phases
  resources :finalphases
  resources :opinions
  resources :finalopinions
  post 'phases/update_mark'
  root to: 'visitors#index'
  mount Lockup::Engine, at: '/data/settings'
  
end
