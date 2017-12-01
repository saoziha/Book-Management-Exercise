Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'general_pages#home'
  get  '/help',    to: 'general_pages#help'
  get  '/about',   to: 'general_pages#about'
  get  '/contact', to: 'general_pages#contact'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
end