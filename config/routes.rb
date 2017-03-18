Rails.application.routes.draw do

  root 'posts#index'

  resources :posts, only: [:index, :new, :show, :create] do
    resources :comments, only: [:create]
  end

  resources :comment, only: [:create] do
    resources :comments, only: [:create, :new]
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
