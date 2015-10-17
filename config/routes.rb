Rails.application.routes.draw do
  resources :tags do
    resources :posts
  end
end
