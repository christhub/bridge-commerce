Rails.application.routes.draw do
  resources :posts
  resources :tags, :except => [:index]

  root 'posts#index'
end
