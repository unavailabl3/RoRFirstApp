Rails.application.routes.draw do
  
  root 'static_pages#home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  resources :microposts
  resources :users
  #root 'application#hello'
  
end
