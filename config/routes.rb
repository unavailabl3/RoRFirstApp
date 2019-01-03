Rails.application.routes.draw do
  
  root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/about'
  resources :microposts
  resources :users
  #root 'application#hello'
  
end
