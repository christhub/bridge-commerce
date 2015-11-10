Rails.application.routes.draw do
  devise_for :users
  resources :cart, :except => [:create, :new, :destroy]
  resources :posts do
    resources :comment, :except => [:index, :show]
  end
  resources :tags, :except => [:index]
  resources :charges
  resources :photos, :only => [:index, :destroy, :show]

  root 'posts#index'
end
