Rails.application.routes.draw do
  get 'general_pages/home'
  get 'general_pages/help'
  get 'general_pages/about'
  resources :books
  resources :users


  root 'users#index'
end