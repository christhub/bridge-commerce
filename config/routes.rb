Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comment, :except => [:index, :show]
  end
  resources :tags, :except => [:index]

  root 'posts#index'
end
