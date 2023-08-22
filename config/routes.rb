Rails.application.routes.draw do


  get 'comics/new'
  devise_for :users
  root to: 'homes#top'
  get 'home/about', to: 'homes#about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :comics, only: [:new, :create, :index, :show, :edit, :update]
  resources :publishers, only: [:index, :show]
  resources :cartoonists, only: [:index, :show]
end
