Rails.application.routes.draw do
  root 'pages#home'
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
