Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :tags, :except => [:index]

  root 'posts#index'
end
