Rails.application.routes.draw do
  resources :posts
  resources :tags

  root 'posts#index'
end
