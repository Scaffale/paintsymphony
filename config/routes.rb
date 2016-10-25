Rails.application.routes.draw do
  mount Lockup::Engine, at: 'data#settings'
  resources :sessions
  root to: 'visitors#index'
  get '/settings', :to => redirect('data#settings')
  
end
