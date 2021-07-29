Rails.application.routes.draw do
  get 'category/show'
  resources :articles do
    resources :votes, only: [:create]
  end
  resources :articles, only: [:create, :show, :new]
  resources :category, only: [:show]

  devise_for :users

  root 'articles#index'
end
