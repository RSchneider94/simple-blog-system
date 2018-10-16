Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
